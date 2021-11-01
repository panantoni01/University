package struktury;


public class ZbiorListowy implements Zbior, Cloneable {
    private Wezel lista;
    private class Wezel /* WAŻNE --> */ implements Cloneable{
        private Para para;
        private Wezel nast;
        
        public Wezel(Para para, Wezel nast) {
            this.para = para;
            this.nast = nast;
        }
        public Wezel(Para para) {
            this(para, null);
        }

        public Para szukaj(String klucz) {
            if (this.para.klucz.equals(klucz))
                return this.para;
            if (nast != null)
                return nast.szukaj(klucz);
            return null;
        }
        public void wstaw(Para para) {
            if (this.para.klucz.equals(para.klucz)) {
                this.para.setWartosc(para.getWartosc());
                return;
            }
            if (this.nast == null) {
                Wezel w = new Wezel(para);
                this.nast = w;
                return;
            }
            this.nast.wstaw(para);
        }
        public void usun(String klucz, Wezel prev) {
            if (this.para.klucz.equals(klucz)) {
                prev.nast = this.nast;
                return;
            }
            if (nast == null)
                return;
            else
                this.nast.usun(klucz, this);
        }
        public int ile() {
            if (this.nast == null)
                return 1;
            return 1 + this.nast.ile();
        }

        public Wezel clone() {
            try
            {
                Wezel w = (Wezel) super.clone();
                if (this.nast != null) 
                    w.nast = this.nast.clone();
                return w;
            }
            catch (CloneNotSupportedException ex) { 
                return null; 
            }
        }
        public String toString() {
            String s = this.para.toString();
            if (nast != null) 
                return s + ", "+ this.nast.toString();
            return s;
        }

    }
      
    public Para szukaj(String klucz) {
        if (this.lista != null)
            return this.lista.szukaj(klucz);
        return null;
    }
    public void wstaw(Para para) {
        if (this.lista != null) 
            this.lista.wstaw(para);
        else 
            this.lista = new Wezel(para);
    }
    public void usun(String klucz) {
        if (this.lista == null)
            return;
        if (this.lista.para.klucz.equals(klucz)) {
            this.lista = this.lista.nast;
            return;
        }
        if (this.lista.nast != null)
            this.lista.nast.usun(klucz, this.lista);
    }
    public void czysc() {
        this.lista = null;
    }
    public int ile() {
        if (lista == null)
            return 0;
        return lista.ile();
    }

    public ZbiorListowy clone() {
        try
        {
            ZbiorListowy zb = (ZbiorListowy) super.clone();
            if (zb != null) 
                zb.lista = this.lista.clone();
            return zb;
        }
        catch (CloneNotSupportedException ex) { 
            return null; 
        }
    }
    public String toString () {
        if (this.lista == null)
            return "";
        return this.lista.toString();
    }
}