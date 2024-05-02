PGDMP     1    %                {           projekt_bazy_danych    15.2    15.2 O    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            b           1262    24732    projekt_bazy_danych    DATABASE     �   CREATE DATABASE projekt_bazy_danych WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
 #   DROP DATABASE projekt_bazy_danych;
                postgres    false            �            1259    24745    klienci    TABLE     �  CREATE TABLE public.klienci (
    id_klienta integer NOT NULL,
    imie character varying(50) NOT NULL,
    nazwisko character varying(50) NOT NULL,
    adres_zamieszkania character varying(300) NOT NULL,
    data_urodzenia character varying(10) NOT NULL,
    data_pierwszej_wizyty character varying(10) NOT NULL,
    numer_telefonu character varying(12) NOT NULL,
    e_mail character varying(50) NOT NULL
);
    DROP TABLE public.klienci;
       public         heap    postgres    false            �            1259    24744 (   klienci_      id_klienta_seq    SEQUENCE     �   CREATE SEQUENCE public."klienci_      id_klienta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."klienci_      id_klienta_seq";
       public          postgres    false    215            c           0    0 (   klienci_      id_klienta_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."klienci_      id_klienta_seq" OWNED BY public.klienci.id_klienta;
          public          postgres    false    214            �            1259    24798    opinie    TABLE     2  CREATE TABLE public.opinie (
    opinia_id integer NOT NULL,
    ocena character varying(15) NOT NULL,
    id_klienta character varying(50) NOT NULL,
    id_pracownika character varying(50) NOT NULL,
    tresc_opinii character varying(1000) NOT NULL,
    data_wystawienia character varying(50) NOT NULL
);
    DROP TABLE public.opinie;
       public         heap    postgres    false            �            1259    24797    opinie_opinia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.opinie_opinia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.opinie_opinia_id_seq;
       public          postgres    false    219            d           0    0    opinie_opinia_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.opinie_opinia_id_seq OWNED BY public.opinie.opinia_id;
          public          postgres    false    218            �            1259    24890 
   pracownicy    TABLE       CREATE TABLE public.pracownicy (
    id_prac integer NOT NULL,
    imie character varying(50) NOT NULL,
    nazwisko character varying(50) NOT NULL,
    adres_zamieszkania character varying(300) NOT NULL,
    data_urodzenia character varying(10) NOT NULL,
    data_zatrudnienia character varying(10) NOT NULL,
    numer_telefonu character varying(12) NOT NULL,
    e_mail character varying(50) NOT NULL,
    stanowisko_id integer NOT NULL,
    godziny_pracy character varying(50),
    salon character varying(50)
);
    DROP TABLE public.pracownicy;
       public         heap    postgres    false            �            1259    24889 (   pracownicy_      id_prac_seq    SEQUENCE     �   CREATE SEQUENCE public."pracownicy_      id_prac_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."pracownicy_      id_prac_seq";
       public          postgres    false    229            e           0    0 (   pracownicy_      id_prac_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."pracownicy_      id_prac_seq" OWNED BY public.pracownicy.id_prac;
          public          postgres    false    228            �            1259    24908    promocje    TABLE     �   CREATE TABLE public.promocje (
    promocja_id integer NOT NULL,
    okres_promocji character varying(50),
    usluga_id integer,
    procent_rabatu integer,
    data_rozpoczecia character varying(50),
    data_zakonczenia character varying(50)
);
    DROP TABLE public.promocje;
       public         heap    postgres    false            �            1259    24907    promocje_promocja_id_seq    SEQUENCE     �   CREATE SEQUENCE public.promocje_promocja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.promocje_promocja_id_seq;
       public          postgres    false    232            f           0    0    promocje_promocja_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.promocje_promocja_id_seq OWNED BY public.promocje.promocja_id;
          public          postgres    false    231            �            1259    24870 
   rezerwacje    TABLE       CREATE TABLE public.rezerwacje (
    rezerwacja_id integer NOT NULL,
    klient_id integer,
    usluga_id integer,
    id_pracownika integer,
    cena character varying(7) NOT NULL,
    czas_uslugi character varying(5) NOT NULL,
    data_rezerw character varying(11) NOT NULL
);
    DROP TABLE public.rezerwacje;
       public         heap    postgres    false            �            1259    24869    rezerwacje_rezerwacja_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rezerwacje_rezerwacja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.rezerwacje_rezerwacja_id_seq;
       public          postgres    false    227            g           0    0    rezerwacje_rezerwacja_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.rezerwacje_rezerwacja_id_seq OWNED BY public.rezerwacje.rezerwacja_id;
          public          postgres    false    226            �            1259    24901    salony    TABLE     '  CREATE TABLE public.salony (
    nazwa character varying(50) NOT NULL,
    godziny_otwar character varying(8) NOT NULL,
    dni_rob character varying(20) NOT NULL,
    adres character varying(20) NOT NULL,
    swieta character varying(10) NOT NULL,
    weekendy character varying(7) NOT NULL
);
    DROP TABLE public.salony;
       public         heap    postgres    false            �            1259    24848    sprzet    TABLE       CREATE TABLE public.sprzet (
    sprzet_id integer NOT NULL,
    nazwa character varying(50) NOT NULL,
    producent character varying(50) NOT NULL,
    usluga_id integer,
    gwarancja character varying(10) NOT NULL,
    data_zakupu character varying(10) NOT NULL
);
    DROP TABLE public.sprzet;
       public         heap    postgres    false            �            1259    24847    sprzet_sprzet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sprzet_sprzet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sprzet_sprzet_id_seq;
       public          postgres    false    221            h           0    0    sprzet_sprzet_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sprzet_sprzet_id_seq OWNED BY public.sprzet.sprzet_id;
          public          postgres    false    220            �            1259    24915 
   stanowiska    TABLE     q   CREATE TABLE public.stanowiska (
    nazwa character varying(50) NOT NULL,
    id_stanowiska integer NOT NULL
);
    DROP TABLE public.stanowiska;
       public         heap    postgres    false            �            1259    24914 +   stanowiska_     id_stanowiska_seq    SEQUENCE     �   CREATE SEQUENCE public."stanowiska_     id_stanowiska_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."stanowiska_     id_stanowiska_seq";
       public          postgres    false    234            i           0    0 +   stanowiska_     id_stanowiska_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE public."stanowiska_     id_stanowiska_seq" OWNED BY public.stanowiska.id_stanowiska;
          public          postgres    false    233            �            1259    24855    uslugi    TABLE       CREATE TABLE public.uslugi (
    usluga_id integer NOT NULL,
    nazwa character varying(50) NOT NULL,
    pracownik_id integer,
    czas character varying(10) NOT NULL,
    cena character varying(7) NOT NULL,
    promocja_id integer,
    rezerwacja_id integer
);
    DROP TABLE public.uslugi;
       public         heap    postgres    false            �            1259    24854    uslugi_usluga_id_seq    SEQUENCE     �   CREATE SEQUENCE public.uslugi_usluga_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.uslugi_usluga_id_seq;
       public          postgres    false    223            j           0    0    uslugi_usluga_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.uslugi_usluga_id_seq OWNED BY public.uslugi.usluga_id;
          public          postgres    false    222            �            1259    24791    wynagrodzenie    TABLE     "  CREATE TABLE public.wynagrodzenie (
    wynagrodzenie_id integer NOT NULL,
    pensja integer NOT NULL,
    stawka_godzin character varying(5) NOT NULL,
    id_pracownika character varying(10) NOT NULL,
    premia character varying(7) NOT NULL,
    bonusy character varying(50) NOT NULL
);
 !   DROP TABLE public.wynagrodzenie;
       public         heap    postgres    false            �            1259    24790 "   wynagrodzenie_wynagrodzenie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wynagrodzenie_wynagrodzenie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.wynagrodzenie_wynagrodzenie_id_seq;
       public          postgres    false    217            k           0    0 "   wynagrodzenie_wynagrodzenie_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.wynagrodzenie_wynagrodzenie_id_seq OWNED BY public.wynagrodzenie.wynagrodzenie_id;
          public          postgres    false    216            �            1259    24862    zasoby    TABLE     <  CREATE TABLE public.zasoby (
    zasob_id integer NOT NULL,
    nazwa character varying(50) NOT NULL,
    producent character varying(50) NOT NULL,
    usluga_id integer,
    zuzycie character varying(300) NOT NULL,
    data_waznosci character varying(10) NOT NULL,
    data_zakupu character varying(10) NOT NULL
);
    DROP TABLE public.zasoby;
       public         heap    postgres    false            �            1259    24861    zasoby_zasob_id_seq    SEQUENCE     �   CREATE SEQUENCE public.zasoby_zasob_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.zasoby_zasob_id_seq;
       public          postgres    false    225            l           0    0    zasoby_zasob_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.zasoby_zasob_id_seq OWNED BY public.zasoby.zasob_id;
          public          postgres    false    224            �           2604    24748    klienci id_klienta    DEFAULT     �   ALTER TABLE ONLY public.klienci ALTER COLUMN id_klienta SET DEFAULT nextval('public."klienci_      id_klienta_seq"'::regclass);
 A   ALTER TABLE public.klienci ALTER COLUMN id_klienta DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    24801    opinie opinia_id    DEFAULT     t   ALTER TABLE ONLY public.opinie ALTER COLUMN opinia_id SET DEFAULT nextval('public.opinie_opinia_id_seq'::regclass);
 ?   ALTER TABLE public.opinie ALTER COLUMN opinia_id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    24893    pracownicy id_prac    DEFAULT     �   ALTER TABLE ONLY public.pracownicy ALTER COLUMN id_prac SET DEFAULT nextval('public."pracownicy_      id_prac_seq"'::regclass);
 A   ALTER TABLE public.pracownicy ALTER COLUMN id_prac DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    24911    promocje promocja_id    DEFAULT     |   ALTER TABLE ONLY public.promocje ALTER COLUMN promocja_id SET DEFAULT nextval('public.promocje_promocja_id_seq'::regclass);
 C   ALTER TABLE public.promocje ALTER COLUMN promocja_id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    24873    rezerwacje rezerwacja_id    DEFAULT     �   ALTER TABLE ONLY public.rezerwacje ALTER COLUMN rezerwacja_id SET DEFAULT nextval('public.rezerwacje_rezerwacja_id_seq'::regclass);
 G   ALTER TABLE public.rezerwacje ALTER COLUMN rezerwacja_id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    24851    sprzet sprzet_id    DEFAULT     t   ALTER TABLE ONLY public.sprzet ALTER COLUMN sprzet_id SET DEFAULT nextval('public.sprzet_sprzet_id_seq'::regclass);
 ?   ALTER TABLE public.sprzet ALTER COLUMN sprzet_id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    24918    stanowiska id_stanowiska    DEFAULT     �   ALTER TABLE ONLY public.stanowiska ALTER COLUMN id_stanowiska SET DEFAULT nextval('public."stanowiska_     id_stanowiska_seq"'::regclass);
 G   ALTER TABLE public.stanowiska ALTER COLUMN id_stanowiska DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    24858    uslugi usluga_id    DEFAULT     t   ALTER TABLE ONLY public.uslugi ALTER COLUMN usluga_id SET DEFAULT nextval('public.uslugi_usluga_id_seq'::regclass);
 ?   ALTER TABLE public.uslugi ALTER COLUMN usluga_id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    24794    wynagrodzenie wynagrodzenie_id    DEFAULT     �   ALTER TABLE ONLY public.wynagrodzenie ALTER COLUMN wynagrodzenie_id SET DEFAULT nextval('public.wynagrodzenie_wynagrodzenie_id_seq'::regclass);
 M   ALTER TABLE public.wynagrodzenie ALTER COLUMN wynagrodzenie_id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    24865    zasoby zasob_id    DEFAULT     r   ALTER TABLE ONLY public.zasoby ALTER COLUMN zasob_id SET DEFAULT nextval('public.zasoby_zasob_id_seq'::regclass);
 >   ALTER TABLE public.zasoby ALTER COLUMN zasob_id DROP DEFAULT;
       public          postgres    false    225    224    225            I          0    24745    klienci 
   TABLE DATA           �   COPY public.klienci (id_klienta, imie, nazwisko, adres_zamieszkania, data_urodzenia, data_pierwszej_wizyty, numer_telefonu, e_mail) FROM stdin;
    public          postgres    false    215   b       M          0    24798    opinie 
   TABLE DATA           m   COPY public.opinie (opinia_id, ocena, id_klienta, id_pracownika, tresc_opinii, data_wystawienia) FROM stdin;
    public          postgres    false    219   �b       W          0    24890 
   pracownicy 
   TABLE DATA           �   COPY public.pracownicy (id_prac, imie, nazwisko, adres_zamieszkania, data_urodzenia, data_zatrudnienia, numer_telefonu, e_mail, stanowisko_id, godziny_pracy, salon) FROM stdin;
    public          postgres    false    229   �c       Z          0    24908    promocje 
   TABLE DATA           ~   COPY public.promocje (promocja_id, okres_promocji, usluga_id, procent_rabatu, data_rozpoczecia, data_zakonczenia) FROM stdin;
    public          postgres    false    232   md       U          0    24870 
   rezerwacje 
   TABLE DATA           x   COPY public.rezerwacje (rezerwacja_id, klient_id, usluga_id, id_pracownika, cena, czas_uslugi, data_rezerw) FROM stdin;
    public          postgres    false    227   �d       X          0    24901    salony 
   TABLE DATA           X   COPY public.salony (nazwa, godziny_otwar, dni_rob, adres, swieta, weekendy) FROM stdin;
    public          postgres    false    230   Se       O          0    24848    sprzet 
   TABLE DATA           `   COPY public.sprzet (sprzet_id, nazwa, producent, usluga_id, gwarancja, data_zakupu) FROM stdin;
    public          postgres    false    221   �e       \          0    24915 
   stanowiska 
   TABLE DATA           :   COPY public.stanowiska (nazwa, id_stanowiska) FROM stdin;
    public          postgres    false    234   <f       Q          0    24855    uslugi 
   TABLE DATA           h   COPY public.uslugi (usluga_id, nazwa, pracownik_id, czas, cena, promocja_id, rezerwacja_id) FROM stdin;
    public          postgres    false    223   �f       K          0    24791    wynagrodzenie 
   TABLE DATA           o   COPY public.wynagrodzenie (wynagrodzenie_id, pensja, stawka_godzin, id_pracownika, premia, bonusy) FROM stdin;
    public          postgres    false    217   g       S          0    24862    zasoby 
   TABLE DATA           l   COPY public.zasoby (zasob_id, nazwa, producent, usluga_id, zuzycie, data_waznosci, data_zakupu) FROM stdin;
    public          postgres    false    225   �g       m           0    0 (   klienci_      id_klienta_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."klienci_      id_klienta_seq"', 1, false);
          public          postgres    false    214            n           0    0    opinie_opinia_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.opinie_opinia_id_seq', 1, false);
          public          postgres    false    218            o           0    0 (   pracownicy_      id_prac_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."pracownicy_      id_prac_seq"', 1, false);
          public          postgres    false    228            p           0    0    promocje_promocja_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.promocje_promocja_id_seq', 1, false);
          public          postgres    false    231            q           0    0    rezerwacje_rezerwacja_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.rezerwacje_rezerwacja_id_seq', 1, false);
          public          postgres    false    226            r           0    0    sprzet_sprzet_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sprzet_sprzet_id_seq', 1, false);
          public          postgres    false    220            s           0    0 +   stanowiska_     id_stanowiska_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."stanowiska_     id_stanowiska_seq"', 1, false);
          public          postgres    false    233            t           0    0    uslugi_usluga_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.uslugi_usluga_id_seq', 1, false);
          public          postgres    false    222            u           0    0 "   wynagrodzenie_wynagrodzenie_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.wynagrodzenie_wynagrodzenie_id_seq', 1, false);
          public          postgres    false    216            v           0    0    zasoby_zasob_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.zasoby_zasob_id_seq', 1, false);
          public          postgres    false    224            �           2606    24750    klienci klienci_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.klienci
    ADD CONSTRAINT klienci_pkey PRIMARY KEY (id_klienta);
 >   ALTER TABLE ONLY public.klienci DROP CONSTRAINT klienci_pkey;
       public            postgres    false    215            �           2606    24752 ,   klienci klienci_      e_mail_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.klienci
    ADD CONSTRAINT "klienci_      e_mail_key" UNIQUE (e_mail);
 X   ALTER TABLE ONLY public.klienci DROP CONSTRAINT "klienci_      e_mail_key";
       public            postgres    false    215            �           2606    24805    opinie opinie_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.opinie
    ADD CONSTRAINT opinie_pkey PRIMARY KEY (opinia_id);
 <   ALTER TABLE ONLY public.opinie DROP CONSTRAINT opinie_pkey;
       public            postgres    false    219            �           2606    24897    pracownicy pracownicy_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pracownicy
    ADD CONSTRAINT pracownicy_pkey PRIMARY KEY (id_prac);
 D   ALTER TABLE ONLY public.pracownicy DROP CONSTRAINT pracownicy_pkey;
       public            postgres    false    229            �           2606    24899 2   pracownicy pracownicy_      e_mail_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.pracownicy
    ADD CONSTRAINT "pracownicy_      e_mail_key" UNIQUE (e_mail);
 ^   ALTER TABLE ONLY public.pracownicy DROP CONSTRAINT "pracownicy_      e_mail_key";
       public            postgres    false    229            �           2606    24913    promocje promocje_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.promocje
    ADD CONSTRAINT promocje_pkey PRIMARY KEY (promocja_id);
 @   ALTER TABLE ONLY public.promocje DROP CONSTRAINT promocje_pkey;
       public            postgres    false    232            �           2606    24875    rezerwacje rezerwacje_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.rezerwacje
    ADD CONSTRAINT rezerwacje_pkey PRIMARY KEY (rezerwacja_id);
 D   ALTER TABLE ONLY public.rezerwacje DROP CONSTRAINT rezerwacje_pkey;
       public            postgres    false    227            �           2606    24905    salony salony_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.salony
    ADD CONSTRAINT salony_pkey PRIMARY KEY (nazwa);
 <   ALTER TABLE ONLY public.salony DROP CONSTRAINT salony_pkey;
       public            postgres    false    230            �           2606    24853    sprzet sprzet_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.sprzet
    ADD CONSTRAINT sprzet_pkey PRIMARY KEY (sprzet_id);
 <   ALTER TABLE ONLY public.sprzet DROP CONSTRAINT sprzet_pkey;
       public            postgres    false    221            �           2606    24920    stanowiska stanowiska_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.stanowiska
    ADD CONSTRAINT stanowiska_pkey PRIMARY KEY (id_stanowiska);
 D   ALTER TABLE ONLY public.stanowiska DROP CONSTRAINT stanowiska_pkey;
       public            postgres    false    234            �           2606    24860    uslugi uslugi_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.uslugi
    ADD CONSTRAINT uslugi_pkey PRIMARY KEY (usluga_id);
 <   ALTER TABLE ONLY public.uslugi DROP CONSTRAINT uslugi_pkey;
       public            postgres    false    223            �           2606    24796     wynagrodzenie wynagrodzenie_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.wynagrodzenie
    ADD CONSTRAINT wynagrodzenie_pkey PRIMARY KEY (wynagrodzenie_id);
 J   ALTER TABLE ONLY public.wynagrodzenie DROP CONSTRAINT wynagrodzenie_pkey;
       public            postgres    false    217            �           2606    24867    zasoby zasoby_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.zasoby
    ADD CONSTRAINT zasoby_pkey PRIMARY KEY (zasob_id);
 <   ALTER TABLE ONLY public.zasoby DROP CONSTRAINT zasoby_pkey;
       public            postgres    false    225            I   �   x�}�K
1�us��G�wq3�,����<��H�d��~
�;���y�����]_�I�8�D�jKdd�uE+��6�<=�g��|v<�L/�E�,_/��O��d�5�'��g�Y}^���3�����,ώ/P����j>y�Wh�7�M}3_�����|W������ \	���ft��p� �gs�R      M   �   x�U�=
�0����a�%�ߥPJ��%)m�O#T�ʫE�D8��x��ko�󹎵�=�T#'΁U1$�D���ɫbSEU��UeSUU��USMU��UUS]U��U5SCՀ�� uSSՄ��S�~oM����u�Fo1��v+g�      W   �   x�}һjA��Z�0�H�����o����<}���Aŀ*q��a�m+½�����@���# ��`���Ǘ�`���z�@"|����w���}���� H3��<�dYA6�g {00�L�� y00����!{��X,�X�x��X��X�z���l�ؠyP(��b��@� F-;~Ҏ���Y��.z��e�e&�D      Z   d   x�uл�0�����.)ݤ��eKW^w�'@�d�������%k),��D��Ub2��)0��0U��`�83�Ka���7O��o�<���;��x�B�      U   b   x�=ι�0CњƐ%��.Y!�������6��.�!7�T�V_�,��Y�<HI��AFrd��N���I��A�����$m|ҠE�j)�q�(T      X   /   x�KJM,-�,N�����54�,��-(�LL)J-6�4"�=... ;E      O   �   x�M�;�@���>�j���MhB $Nx"&�����I�-�ג�v����e{$��1�f�T�5Z �Ej�ʹY��L��[h�����V�*-Rl�m�4Z�v�Nۥ;�H��v�p0h�:a'��`�"5�}�xX#��GH����SP��Vn      \   G   x�M�;
�0�z�0��?w���+���d^���޹n����"�,!�2����*����:�l`�,�σ���1      Q   u   x�=��!���L1�ap/�l{���3#?������r8���s&O��j��uX�H�aZI���=��h{�o���VTDA�*�Rڳ;�J�Ԏ.Vs$�^0�j�_$��/e      K   h   x�MϹ�@C��*�����Q ��"�(x����������q��mh�Fn�Nv�;��($9�Y���N���<ȣx`�'yO,�"����%���_�b� �|0�      S   �   x�m�;
BQ�:w������؈�>E����0�)R�TQ���}�8_N����^
�t,�˟��j��ͽ�"o��>��ȑ�􅾸/(�/��������􍾹oh�o��������~����~������*����1�+�n�KJ�	2s�     