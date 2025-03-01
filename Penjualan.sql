PGDMP                         {         	   penjualan    14.7    14.7 *               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394 	   penjualan    DATABASE     l   CREATE DATABASE penjualan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE penjualan;
                postgres    false            �            1259    16395    barang    TABLE     �   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    kode_barang character(4) NOT NULL,
    nama_brg character varying(50) NOT NULL,
    harga integer NOT NULL,
    stok integer NOT NULL,
    supplier_id integer NOT NULL
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    16398    barang_id_barang_seq    SEQUENCE     �   CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.barang_id_barang_seq;
       public          postgres    false    209                       0    0    barang_id_barang_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;
          public          postgres    false    210            �            1259    16399    pembeli    TABLE     �   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(255) NOT NULL,
    no_tlp_pembeli character varying(15) NOT NULL,
    alamat_pembeli text NOT NULL
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            �            1259    16404    pembeli_id_pembeli_seq    SEQUENCE     �   CREATE SEQUENCE public.pembeli_id_pembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pembeli_id_pembeli_seq;
       public          postgres    false    211                       0    0    pembeli_id_pembeli_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.pembeli_id_pembeli_seq OWNED BY public.pembeli.id_pembeli;
          public          postgres    false    212            �            1259    16405    supplier    TABLE     �   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(255) NOT NULL,
    no_tlp_supplier character varying(15) NOT NULL,
    email_supplier character varying(50) NOT NULL,
    alamat_supplier text
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    16410    supplier_id_supplier_seq    SEQUENCE     �   CREATE SEQUENCE public.supplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.supplier_id_supplier_seq;
       public          postgres    false    213                        0    0    supplier_id_supplier_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.supplier_id_supplier_seq OWNED BY public.supplier.id_supplier;
          public          postgres    false    214            �            1259    16411 	   transaksi    TABLE       CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    barang_id integer NOT NULL,
    pembeli_id integer NOT NULL,
    kode_transaksi character varying(25) NOT NULL,
    jumlah_transaksi integer NOT NULL,
    tanggal_transaksi date NOT NULL
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            �            1259    16414    transaksi_id_transaksi_seq    SEQUENCE     �   CREATE SEQUENCE public.transaksi_id_transaksi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.transaksi_id_transaksi_seq;
       public          postgres    false    215            !           0    0    transaksi_id_transaksi_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.transaksi_id_transaksi_seq OWNED BY public.transaksi.id_transaksi;
          public          postgres    false    216            �            1259    16415    users    TABLE     �   CREATE TABLE public.users (
    id_user integer NOT NULL,
    username character varying(25) NOT NULL,
    password character varying(255) NOT NULL,
    last_login timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16419    users_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_id_user_seq;
       public          postgres    false    217            "           0    0    users_id_user_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_id_user_seq OWNED BY public.users.id_user;
          public          postgres    false    218            p           2604    16420    barang id_barang    DEFAULT     t   ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);
 ?   ALTER TABLE public.barang ALTER COLUMN id_barang DROP DEFAULT;
       public          postgres    false    210    209            q           2604    16421    pembeli id_pembeli    DEFAULT     x   ALTER TABLE ONLY public.pembeli ALTER COLUMN id_pembeli SET DEFAULT nextval('public.pembeli_id_pembeli_seq'::regclass);
 A   ALTER TABLE public.pembeli ALTER COLUMN id_pembeli DROP DEFAULT;
       public          postgres    false    212    211            r           2604    16422    supplier id_supplier    DEFAULT     |   ALTER TABLE ONLY public.supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.supplier_id_supplier_seq'::regclass);
 C   ALTER TABLE public.supplier ALTER COLUMN id_supplier DROP DEFAULT;
       public          postgres    false    214    213            s           2604    16423    transaksi id_transaksi    DEFAULT     �   ALTER TABLE ONLY public.transaksi ALTER COLUMN id_transaksi SET DEFAULT nextval('public.transaksi_id_transaksi_seq'::regclass);
 E   ALTER TABLE public.transaksi ALTER COLUMN id_transaksi DROP DEFAULT;
       public          postgres    false    216    215            u           2604    16424    users id_user    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN id_user SET DEFAULT nextval('public.users_id_user_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    218    217                      0    16395    barang 
   TABLE DATA           \   COPY public.barang (id_barang, kode_barang, nama_brg, harga, stok, supplier_id) FROM stdin;
    public          postgres    false    209   �0                 0    16399    pembeli 
   TABLE DATA           [   COPY public.pembeli (id_pembeli, nama_pembeli, no_tlp_pembeli, alamat_pembeli) FROM stdin;
    public          postgres    false    211   �0                 0    16405    supplier 
   TABLE DATA           p   COPY public.supplier (id_supplier, nama_supplier, no_tlp_supplier, email_supplier, alamat_supplier) FROM stdin;
    public          postgres    false    213   U1                 0    16411 	   transaksi 
   TABLE DATA           }   COPY public.transaksi (id_transaksi, barang_id, pembeli_id, kode_transaksi, jumlah_transaksi, tanggal_transaksi) FROM stdin;
    public          postgres    false    215   �1                 0    16415    users 
   TABLE DATA           H   COPY public.users (id_user, username, password, last_login) FROM stdin;
    public          postgres    false    217   %2       #           0    0    barang_id_barang_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.barang_id_barang_seq', 27, true);
          public          postgres    false    210            $           0    0    pembeli_id_pembeli_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pembeli_id_pembeli_seq', 6, true);
          public          postgres    false    212            %           0    0    supplier_id_supplier_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.supplier_id_supplier_seq', 6, true);
          public          postgres    false    214            &           0    0    transaksi_id_transaksi_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transaksi_id_transaksi_seq', 20, true);
          public          postgres    false    216            '           0    0    users_id_user_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_id_user_seq', 1, true);
          public          postgres    false    218            w           2606    16426    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    209            y           2606    16428    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    211            {           2606    16430    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    213            }           2606    16432    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    215                       2606    16434    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �           2606    16435    barang b_s_fk_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT b_s_fk_c FOREIGN KEY (supplier_id) REFERENCES public.supplier(id_supplier) ON UPDATE CASCADE ON DELETE CASCADE;
 9   ALTER TABLE ONLY public.barang DROP CONSTRAINT b_s_fk_c;
       public          postgres    false    3195    209    213            �           2606    16440 "   transaksi transaksi_barang_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_barang_id_fkey FOREIGN KEY (barang_id) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_barang_id_fkey;
       public          postgres    false    209    215    3191            �           2606    16445 #   transaksi transaksi_pembeli_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pembeli_id_fkey FOREIGN KEY (pembeli_id) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pembeli_id_fkey;
       public          postgres    false    215    3193    211               ;   x�32�t
20�N,-Vptr�4750�41�4�22Irz���f�r�eL�21z\\\ p��         \   x��1� ���)<�Qv!zk�D"����d�y�%���0�,��0B�X5Ġdq\%u��}ފ�hX�C�ڎ��P}i���~�7��D�$         o   x�3�t�Sp-�I�KOOTpLJL��4�07�4�01�4�L�J%�d�s3s���s9��RJ�ҹ̀(�d&�'%*�f%f��%��4136315�L�H������ ��+z         A   x�Mɱ� ��"��̐���s���k�;�P���̑�)�E�A��>��)���8��H.�AJ         0   x�3�LL��̃�FFƺƺ�&
�fV�FV��zff��&\1z\\\ 
.     