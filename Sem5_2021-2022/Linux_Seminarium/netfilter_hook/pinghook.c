#include<linux/netfilter.h>
#include<linux/netfilter_ipv4.h>
#include<linux/ip.h>
#include<linux/icmp.h>
#include<linux/kernel.h>
#include<linux/init.h>
#include<linux/module.h>
#include<linux/inet.h>

struct nf_hook_ops *nfhops = NULL;

static unsigned int drop_pingrequest(void *priv,  struct sk_buff *skb, 
                                const struct nf_hook_state *state) {
    // ISO C90 forbids mixed declarations and code in C
    struct iphdr *iph;
    struct icmphdr *icmph;
    
    if (skb == NULL) 
        return NF_ACCEPT;

    iph = ip_hdr(skb);

    if (iph->protocol == IPPROTO_ICMP) {
        icmph = icmp_hdr(skb);
        if (icmph->type == ICMP_ECHO) {
            printk(KERN_INFO "Dropped ICMP echo request from: %pI4\n", &iph->saddr);
            return NF_DROP;
        }
    }

    return NF_ACCEPT;
}

static int __init pinghook_init(void) {
    // GFP_KERNEL means that allocation is performed on behalf of a process running in the kernel space
    nfhops = (struct nf_hook_ops*) kmalloc(sizeof(struct nf_hook_ops), GFP_KERNEL); // https://www.kernel.org/doc/htmldocs/kernel-api/API-kmalloc.html
    
    nfhops->hook = (nf_hookfn *) drop_pingrequest;
    nfhops->hooknum = NF_INET_PRE_ROUTING;
    nfhops->pf = NFPROTO_IPV4;
    nfhops->priority = NF_IP_PRI_FILTER; // in case that other hooks are registered in the system
    
    nf_register_net_hook(&init_net, nfhops); // kernel version >= 4.13.0
    
    printk(KERN_INFO "Pinghook module loaded\n");
    return 0;
}

static void __exit pinghook_exit(void) {
    nf_unregister_net_hook(&init_net, nfhops);
    kfree(nfhops);
    
    printk(KERN_INFO "Pinghook module unloaded\n");
}

module_init(pinghook_init);
module_exit(pinghook_exit);

MODULE_LICENSE ("GPL");
MODULE_AUTHOR ("Antoni Pokusinski");
MODULE_DESCRIPTION ("Simple kernel module to drop ICMP echo requests");