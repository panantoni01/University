#include<linux/bpf.h>
#include<linux/icmp.h>
#include<linux/ip.h>
#include<linux/in.h>
#include<linux/if_ether.h>
#include<inttypes.h>
#define SEC(name) __attribute__((section(name), used))

SEC("ping_drop")
int ping_drop_prog(struct xdp_md *ctx) {
	void *data = (void *)(long)ctx->data;
    void *data_end = (void *)(long)ctx->data_end;
	struct ethhdr *eth = data;
    int ethsize = sizeof(*eth);
	if (data + ethsize > data_end)
        return XDP_PASS;

	struct iphdr* ip = data + ethsize;
	int ipsize = sizeof(*ip);
	if ((void *)ip + ipsize > data_end)
		return XDP_PASS;

	if (ip->protocol == IPPROTO_ICMP) {
		struct icmphdr* icmp = (struct icmphdr*)((void*)ip + ipsize);
		int icmpsize = sizeof(*icmp);
		if ((void*)icmp + icmpsize > data_end)
			return XDP_PASS;
		
		if (icmp->type == ICMP_ECHO)
			return XDP_DROP;
	}

    return XDP_PASS;
}

char _license[] SEC("license") = "GPL";