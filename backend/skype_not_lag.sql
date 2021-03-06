PGDMP     1    5    
            x            skype_not_lag    12.2    12.2 B    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    17173    skype_not_lag    DATABASE     �   CREATE DATABASE skype_not_lag WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE skype_not_lag;
                postgres    false            �            1259    17282    BLACK_LIST_TOKEN    TABLE     �   CREATE TABLE public."BLACK_LIST_TOKEN" (
    id integer NOT NULL,
    token character varying NOT NULL,
    black_list_on timestamp with time zone NOT NULL
);
 &   DROP TABLE public."BLACK_LIST_TOKEN";
       public         heap    postgres    false            �            1259    17280    BLACK_LIST_TOKEN_id_seq    SEQUENCE     �   CREATE SEQUENCE public."BLACK_LIST_TOKEN_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."BLACK_LIST_TOKEN_id_seq";
       public          postgres    false    217            a           0    0    BLACK_LIST_TOKEN_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."BLACK_LIST_TOKEN_id_seq" OWNED BY public."BLACK_LIST_TOKEN".id;
          public          postgres    false    216            �            1259    17227    GROUP    TABLE     _   CREATE TABLE public."GROUP" (
    id integer NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public."GROUP";
       public         heap    postgres    false            �            1259    17219 
   GROUP_LIST    TABLE     ]   CREATE TABLE public."GROUP_LIST" (
    id integer NOT NULL,
    group_id integer NOT NULL
);
     DROP TABLE public."GROUP_LIST";
       public         heap    postgres    false            �            1259    17217    GROUP_LIST_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GROUP_LIST_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."GROUP_LIST_id_seq";
       public          postgres    false    209            b           0    0    GROUP_LIST_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."GROUP_LIST_id_seq" OWNED BY public."GROUP_LIST".id;
          public          postgres    false    208            �            1259    17225    GROUP_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GROUP_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."GROUP_id_seq";
       public          postgres    false    211            c           0    0    GROUP_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."GROUP_id_seq" OWNED BY public."GROUP".id;
          public          postgres    false    210            �            1259    17246    MESSAGE    TABLE       CREATE TABLE public."MESSAGE" (
    id integer NOT NULL,
    message_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    message character varying,
    icon character varying,
    file character varying
);
    DROP TABLE public."MESSAGE";
       public         heap    postgres    false            �            1259    17238    MESSAGE_LIST    TABLE     _   CREATE TABLE public."MESSAGE_LIST" (
    id integer NOT NULL,
    group_id integer NOT NULL
);
 "   DROP TABLE public."MESSAGE_LIST";
       public         heap    postgres    false            �            1259    17236    MESSAGE_LIST_id_seq    SEQUENCE     �   CREATE SEQUENCE public."MESSAGE_LIST_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."MESSAGE_LIST_id_seq";
       public          postgres    false    213            d           0    0    MESSAGE_LIST_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."MESSAGE_LIST_id_seq" OWNED BY public."MESSAGE_LIST".id;
          public          postgres    false    212            �            1259    17244    MESSAGE_id_seq    SEQUENCE     �   CREATE SEQUENCE public."MESSAGE_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."MESSAGE_id_seq";
       public          postgres    false    215            e           0    0    MESSAGE_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."MESSAGE_id_seq" OWNED BY public."MESSAGE".id;
          public          postgres    false    214            �            1259    17176    USER    TABLE     �   CREATE TABLE public."USER" (
    id integer NOT NULL,
    password character varying NOT NULL,
    "user" character varying NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public."USER";
       public         heap    postgres    false            �            1259    17203 	   USER_INFO    TABLE     �   CREATE TABLE public."USER_INFO" (
    id integer NOT NULL,
    user_id integer NOT NULL,
    full_name character varying NOT NULL,
    birthday timestamp with time zone,
    "SDT" character varying,
    location character varying
);
    DROP TABLE public."USER_INFO";
       public         heap    postgres    false            �            1259    17201    USER_INFO_id_seq    SEQUENCE     �   CREATE SEQUENCE public."USER_INFO_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."USER_INFO_id_seq";
       public          postgres    false    207            f           0    0    USER_INFO_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."USER_INFO_id_seq" OWNED BY public."USER_INFO".id;
          public          postgres    false    206            �            1259    17187 	   USER_ROLE    TABLE     �   CREATE TABLE public."USER_ROLE" (
    id integer NOT NULL,
    role character varying NOT NULL,
    description character varying
);
    DROP TABLE public."USER_ROLE";
       public         heap    postgres    false            �            1259    17185    USER_ROLE_id_seq    SEQUENCE     �   CREATE SEQUENCE public."USER_ROLE_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."USER_ROLE_id_seq";
       public          postgres    false    205            g           0    0    USER_ROLE_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."USER_ROLE_id_seq" OWNED BY public."USER_ROLE".id;
          public          postgres    false    204            �            1259    17174    USER_id_seq    SEQUENCE     �   CREATE SEQUENCE public."USER_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."USER_id_seq";
       public          postgres    false    203            h           0    0    USER_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."USER_id_seq" OWNED BY public."USER".id;
          public          postgres    false    202            �
           2604    17285    BLACK_LIST_TOKEN id    DEFAULT     ~   ALTER TABLE ONLY public."BLACK_LIST_TOKEN" ALTER COLUMN id SET DEFAULT nextval('public."BLACK_LIST_TOKEN_id_seq"'::regclass);
 D   ALTER TABLE public."BLACK_LIST_TOKEN" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    17230    GROUP id    DEFAULT     h   ALTER TABLE ONLY public."GROUP" ALTER COLUMN id SET DEFAULT nextval('public."GROUP_id_seq"'::regclass);
 9   ALTER TABLE public."GROUP" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    17222    GROUP_LIST id    DEFAULT     r   ALTER TABLE ONLY public."GROUP_LIST" ALTER COLUMN id SET DEFAULT nextval('public."GROUP_LIST_id_seq"'::regclass);
 >   ALTER TABLE public."GROUP_LIST" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    17249 
   MESSAGE id    DEFAULT     l   ALTER TABLE ONLY public."MESSAGE" ALTER COLUMN id SET DEFAULT nextval('public."MESSAGE_id_seq"'::regclass);
 ;   ALTER TABLE public."MESSAGE" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    17241    MESSAGE_LIST id    DEFAULT     v   ALTER TABLE ONLY public."MESSAGE_LIST" ALTER COLUMN id SET DEFAULT nextval('public."MESSAGE_LIST_id_seq"'::regclass);
 @   ALTER TABLE public."MESSAGE_LIST" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    17179    USER id    DEFAULT     f   ALTER TABLE ONLY public."USER" ALTER COLUMN id SET DEFAULT nextval('public."USER_id_seq"'::regclass);
 8   ALTER TABLE public."USER" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    17206    USER_INFO id    DEFAULT     p   ALTER TABLE ONLY public."USER_INFO" ALTER COLUMN id SET DEFAULT nextval('public."USER_INFO_id_seq"'::regclass);
 =   ALTER TABLE public."USER_INFO" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    17190    USER_ROLE id    DEFAULT     p   ALTER TABLE ONLY public."USER_ROLE" ALTER COLUMN id SET DEFAULT nextval('public."USER_ROLE_id_seq"'::regclass);
 =   ALTER TABLE public."USER_ROLE" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            Z          0    17282    BLACK_LIST_TOKEN 
   TABLE DATA           F   COPY public."BLACK_LIST_TOKEN" (id, token, black_list_on) FROM stdin;
    public          postgres    false    217   �J       T          0    17227    GROUP 
   TABLE DATA           ,   COPY public."GROUP" (id, title) FROM stdin;
    public          postgres    false    211   AK       R          0    17219 
   GROUP_LIST 
   TABLE DATA           4   COPY public."GROUP_LIST" (id, group_id) FROM stdin;
    public          postgres    false    209   nK       X          0    17246    MESSAGE 
   TABLE DATA           ]   COPY public."MESSAGE" (id, message_id, created_at, user_id, message, icon, file) FROM stdin;
    public          postgres    false    215   �K       V          0    17238    MESSAGE_LIST 
   TABLE DATA           6   COPY public."MESSAGE_LIST" (id, group_id) FROM stdin;
    public          postgres    false    213   �K       L          0    17176    USER 
   TABLE DATA           ?   COPY public."USER" (id, password, "user", role_id) FROM stdin;
    public          postgres    false    203   L       P          0    17203 	   USER_INFO 
   TABLE DATA           X   COPY public."USER_INFO" (id, user_id, full_name, birthday, "SDT", location) FROM stdin;
    public          postgres    false    207   �L       N          0    17187 	   USER_ROLE 
   TABLE DATA           <   COPY public."USER_ROLE" (id, role, description) FROM stdin;
    public          postgres    false    205   �L       i           0    0    BLACK_LIST_TOKEN_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."BLACK_LIST_TOKEN_id_seq"', 4, true);
          public          postgres    false    216            j           0    0    GROUP_LIST_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GROUP_LIST_id_seq"', 1, true);
          public          postgres    false    208            k           0    0    GROUP_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."GROUP_id_seq"', 1, true);
          public          postgres    false    210            l           0    0    MESSAGE_LIST_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."MESSAGE_LIST_id_seq"', 1, true);
          public          postgres    false    212            m           0    0    MESSAGE_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."MESSAGE_id_seq"', 2, true);
          public          postgres    false    214            n           0    0    USER_INFO_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."USER_INFO_id_seq"', 1, true);
          public          postgres    false    206            o           0    0    USER_ROLE_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."USER_ROLE_id_seq"', 2, true);
          public          postgres    false    204            p           0    0    USER_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."USER_id_seq"', 2, true);
          public          postgres    false    202            �
           2606    17290 &   BLACK_LIST_TOKEN BLACK_LIST_TOKEN_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."BLACK_LIST_TOKEN"
    ADD CONSTRAINT "BLACK_LIST_TOKEN_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."BLACK_LIST_TOKEN" DROP CONSTRAINT "BLACK_LIST_TOKEN_pkey";
       public            postgres    false    217            �
           2606    17224    GROUP_LIST GROUP_LIST_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."GROUP_LIST"
    ADD CONSTRAINT "GROUP_LIST_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."GROUP_LIST" DROP CONSTRAINT "GROUP_LIST_pkey";
       public            postgres    false    209            �
           2606    17235    GROUP GROUP_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."GROUP"
    ADD CONSTRAINT "GROUP_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."GROUP" DROP CONSTRAINT "GROUP_pkey";
       public            postgres    false    211            �
           2606    17243    MESSAGE_LIST MESSAGE_LIST_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."MESSAGE_LIST"
    ADD CONSTRAINT "MESSAGE_LIST_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."MESSAGE_LIST" DROP CONSTRAINT "MESSAGE_LIST_pkey";
       public            postgres    false    213            �
           2606    17254    MESSAGE MESSAGE_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."MESSAGE"
    ADD CONSTRAINT "MESSAGE_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."MESSAGE" DROP CONSTRAINT "MESSAGE_pkey";
       public            postgres    false    215            �
           2606    17211    USER_INFO USER_INFO_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."USER_INFO"
    ADD CONSTRAINT "USER_INFO_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."USER_INFO" DROP CONSTRAINT "USER_INFO_pkey";
       public            postgres    false    207            �
           2606    17195    USER_ROLE USER_ROLE_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."USER_ROLE"
    ADD CONSTRAINT "USER_ROLE_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."USER_ROLE" DROP CONSTRAINT "USER_ROLE_pkey";
       public            postgres    false    205            �
           2606    17184    USER USER_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."USER"
    ADD CONSTRAINT "USER_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."USER" DROP CONSTRAINT "USER_pkey";
       public            postgres    false    203            �
           2606    17255 #   GROUP_LIST GROUP_LIST_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GROUP_LIST"
    ADD CONSTRAINT "GROUP_LIST_group_id_fkey" FOREIGN KEY (group_id) REFERENCES public."GROUP"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 Q   ALTER TABLE ONLY public."GROUP_LIST" DROP CONSTRAINT "GROUP_LIST_group_id_fkey";
       public          postgres    false    2752    211    209            �
           2606    17260 '   MESSAGE_LIST MESSAGE_LIST_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MESSAGE_LIST"
    ADD CONSTRAINT "MESSAGE_LIST_group_id_fkey" FOREIGN KEY (group_id) REFERENCES public."GROUP"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 U   ALTER TABLE ONLY public."MESSAGE_LIST" DROP CONSTRAINT "MESSAGE_LIST_group_id_fkey";
       public          postgres    false    2752    211    213            �
           2606    17275    MESSAGE MESSAGE_message_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MESSAGE"
    ADD CONSTRAINT "MESSAGE_message_id_fkey" FOREIGN KEY (message_id) REFERENCES public."MESSAGE_LIST"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 M   ALTER TABLE ONLY public."MESSAGE" DROP CONSTRAINT "MESSAGE_message_id_fkey";
       public          postgres    false    2754    213    215            �
           2606    17270    MESSAGE MESSAGE_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MESSAGE"
    ADD CONSTRAINT "MESSAGE_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."USER"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 J   ALTER TABLE ONLY public."MESSAGE" DROP CONSTRAINT "MESSAGE_user_id_fkey";
       public          postgres    false    215    203    2744            �
           2606    17212     USER_INFO USER_INFO_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."USER_INFO"
    ADD CONSTRAINT "USER_INFO_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."USER"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 N   ALTER TABLE ONLY public."USER_INFO" DROP CONSTRAINT "USER_INFO_user_id_fkey";
       public          postgres    false    203    207    2744            �
           2606    17196    USER USER_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."USER"
    ADD CONSTRAINT "USER_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."USER_ROLE"(id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 D   ALTER TABLE ONLY public."USER" DROP CONSTRAINT "USER_role_id_fkey";
       public          postgres    false    205    203    2746            Z   �   x���
�0  �s���lsz��5MŜfӅ+��ʯώZ�oe�\�I�
u�q/v�߬��T�K�~IC�r�v���}G����N�g�"�z�֪��0�F:�dylfͯT������#Α��^��}L+14�m`g��G����g��b ~�r5      T      x�3�ή,HU��/Q�IL����� F��      R      x�3�4����� ]      X   S   x�3�4�4202�50�52R04�2��21ѳ073�0�60�gW�*��(�$�s���6}�&zf�Ɔ�`}FX���qqq �J      V      x�3�4����� ]      L   s   x�3�442615�LL����4�2�	�$d$�pqs�%���������yX��d�y��Zz�D�慙f���dz�����Fz���Ws M	)��� ���� �� u      P      x�3�4�LL����� �=... H5I      N   .   x�3�tL����I�W�9�@��2�-N-�t
$��q��qqq #��     