PGDMP                      	    x            dbbiblioteca    10.14    10.14 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    24992    dbbiblioteca    DATABASE     �   CREATE DATABASE dbbiblioteca WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE dbbiblioteca;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25181    Autor_autor    TABLE     �   CREATE TABLE public."Autor_autor" (
    id integer NOT NULL,
    "IDAutor" integer NOT NULL,
    "Nombre" character varying(100) NOT NULL,
    "Nacionalidad" character varying(100) NOT NULL
);
 !   DROP TABLE public."Autor_autor";
       public         parcial2    false    3            �            1259    25179    Autor_autor_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Autor_autor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Autor_autor_id_seq";
       public       parcial2    false    3    220            �           0    0    Autor_autor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Autor_autor_id_seq" OWNED BY public."Autor_autor".id;
            public       parcial2    false    219            �            1259    25025 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         parcial2    false    3            �            1259    25023    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       parcial2    false    203    3            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       parcial2    false    202            �            1259    25035    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         parcial2    false    3            �            1259    25033    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       parcial2    false    205    3            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       parcial2    false    204            �            1259    25017    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         parcial2    false    3            �            1259    25015    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       parcial2    false    201    3            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       parcial2    false    200            �            1259    25043 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         parcial2    false    3            �            1259    25053    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         parcial2    false    3            �            1259    25051    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       parcial2    false    209    3            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       parcial2    false    208            �            1259    25041    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       parcial2    false    207    3            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       parcial2    false    206            �            1259    25061    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         parcial2    false    3            �            1259    25059 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       parcial2    false    211    3            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       parcial2    false    210            �            1259    25121    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         parcial2    false    3            �            1259    25119    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       parcial2    false    213    3            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       parcial2    false    212            �            1259    25007    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         parcial2    false    3            �            1259    25005    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       parcial2    false    3    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       parcial2    false    198            �            1259    24996    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         parcial2    false    3            �            1259    24994    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       parcial2    false    197    3            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       parcial2    false    196            �            1259    25160    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         parcial2    false    3            �            1259    25154    libro_libro    TABLE     &  CREATE TABLE public.libro_libro (
    id integer NOT NULL,
    "IDlibro" integer NOT NULL,
    "Codigo" integer NOT NULL,
    "Titulo" character varying(100) NOT NULL,
    "ISBN" character varying(50) NOT NULL,
    "Editorial" character varying(100) NOT NULL,
    "NumPags" integer NOT NULL
);
    DROP TABLE public.libro_libro;
       public         parcial2    false    3            �            1259    25152    libro_libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libro_libro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.libro_libro_id_seq;
       public       parcial2    false    3    215            �           0    0    libro_libro_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.libro_libro_id_seq OWNED BY public.libro_libro.id;
            public       parcial2    false    214            �            1259    25189    prestamos_prestamos    TABLE       CREATE TABLE public.prestamos_prestamos (
    id integer NOT NULL,
    "IDPrestamo" integer NOT NULL,
    "F_prestamo" character varying(100) NOT NULL,
    "F_devolucion" character varying(100) NOT NULL,
    "IDLibro_id" integer NOT NULL,
    "IDUsuario_id" integer NOT NULL
);
 '   DROP TABLE public.prestamos_prestamos;
       public         parcial2    false    3            �            1259    25187    prestamos_prestamos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamos_prestamos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.prestamos_prestamos_id_seq;
       public       parcial2    false    222    3            �           0    0    prestamos_prestamos_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.prestamos_prestamos_id_seq OWNED BY public.prestamos_prestamos.id;
            public       parcial2    false    221            �            1259    25173    usuario_usuario    TABLE     ?  CREATE TABLE public.usuario_usuario (
    id integer NOT NULL,
    "IDUsuario" integer NOT NULL,
    "NumUsuario" integer NOT NULL,
    "NIF" character varying(100) NOT NULL,
    "Nombre" character varying(50) NOT NULL,
    "Direccion" character varying(100) NOT NULL,
    "Telefono" character varying(100) NOT NULL
);
 #   DROP TABLE public.usuario_usuario;
       public         parcial2    false    3            �            1259    25171    usuario_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_usuario_id_seq;
       public       parcial2    false    3    218            �           0    0    usuario_usuario_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_usuario_id_seq OWNED BY public.usuario_usuario.id;
            public       parcial2    false    217            �
           2604    25184    Autor_autor id    DEFAULT     t   ALTER TABLE ONLY public."Autor_autor" ALTER COLUMN id SET DEFAULT nextval('public."Autor_autor_id_seq"'::regclass);
 ?   ALTER TABLE public."Autor_autor" ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    220    219    220            �
           2604    25028    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    203    202    203            �
           2604    25038    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    204    205    205            �
           2604    25020    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    201    200    201            �
           2604    25046    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    207    206    207            �
           2604    25056    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    208    209    209            �
           2604    25064    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    211    210    211            �
           2604    25124    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    213    212    213            �
           2604    25010    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    199    198    199            �
           2604    24999    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    196    197    197            �
           2604    25157    libro_libro id    DEFAULT     p   ALTER TABLE ONLY public.libro_libro ALTER COLUMN id SET DEFAULT nextval('public.libro_libro_id_seq'::regclass);
 =   ALTER TABLE public.libro_libro ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    215    214    215            �
           2604    25192    prestamos_prestamos id    DEFAULT     �   ALTER TABLE ONLY public.prestamos_prestamos ALTER COLUMN id SET DEFAULT nextval('public.prestamos_prestamos_id_seq'::regclass);
 E   ALTER TABLE public.prestamos_prestamos ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    222    221    222            �
           2604    25176    usuario_usuario id    DEFAULT     x   ALTER TABLE ONLY public.usuario_usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_usuario_id_seq'::regclass);
 A   ALTER TABLE public.usuario_usuario ALTER COLUMN id DROP DEFAULT;
       public       parcial2    false    217    218    218            �          0    25181    Autor_autor 
   TABLE DATA               P   COPY public."Autor_autor" (id, "IDAutor", "Nombre", "Nacionalidad") FROM stdin;
    public       parcial2    false    220   |�       �          0    25025 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       parcial2    false    203   έ       �          0    25035    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       parcial2    false    205   �       �          0    25017    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       parcial2    false    201   �       �          0    25043 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       parcial2    false    207   ��       �          0    25053    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       parcial2    false    209   ��       �          0    25061    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       parcial2    false    211   ɰ       �          0    25121    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       parcial2    false    213   �       �          0    25007    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       parcial2    false    199   �       �          0    24996    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       parcial2    false    197   ��       �          0    25160    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       parcial2    false    216   ��       �          0    25154    libro_libro 
   TABLE DATA               h   COPY public.libro_libro (id, "IDlibro", "Codigo", "Titulo", "ISBN", "Editorial", "NumPags") FROM stdin;
    public       parcial2    false    215   ��       �          0    25189    prestamos_prestamos 
   TABLE DATA               {   COPY public.prestamos_prestamos (id, "IDPrestamo", "F_prestamo", "F_devolucion", "IDLibro_id", "IDUsuario_id") FROM stdin;
    public       parcial2    false    222   �       �          0    25173    usuario_usuario 
   TABLE DATA               r   COPY public.usuario_usuario (id, "IDUsuario", "NumUsuario", "NIF", "Nombre", "Direccion", "Telefono") FROM stdin;
    public       parcial2    false    218   J�       �           0    0    Autor_autor_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Autor_autor_id_seq"', 3, true);
            public       parcial2    false    219            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       parcial2    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       parcial2    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
            public       parcial2    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       parcial2    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       parcial2    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       parcial2    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);
            public       parcial2    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
            public       parcial2    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
            public       parcial2    false    196            �           0    0    libro_libro_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.libro_libro_id_seq', 7, true);
            public       parcial2    false    214            �           0    0    prestamos_prestamos_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.prestamos_prestamos_id_seq', 4, true);
            public       parcial2    false    221            �           0    0    usuario_usuario_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_usuario_id_seq', 4, true);
            public       parcial2    false    217                        2606    25186    Autor_autor Autor_autor_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Autor_autor"
    ADD CONSTRAINT "Autor_autor_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Autor_autor" DROP CONSTRAINT "Autor_autor_pkey";
       public         parcial2    false    220            �
           2606    25150    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         parcial2    false    203            �
           2606    25077 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         parcial2    false    205    205            �
           2606    25040 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         parcial2    false    205            �
           2606    25030    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         parcial2    false    203            �
           2606    25068 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         parcial2    false    201    201            �
           2606    25022 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         parcial2    false    201            �
           2606    25058 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         parcial2    false    209            �
           2606    25092 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         parcial2    false    209    209            �
           2606    25048    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         parcial2    false    207            �
           2606    25066 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         parcial2    false    211            �
           2606    25106 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         parcial2    false    211    211            �
           2606    25144     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         parcial2    false    207            �
           2606    25130 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         parcial2    false    213            �
           2606    25014 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         parcial2    false    199    199            �
           2606    25012 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         parcial2    false    199            �
           2606    25004 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         parcial2    false    197            �
           2606    25167 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         parcial2    false    216            �
           2606    25159    libro_libro libro_libro_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.libro_libro
    ADD CONSTRAINT libro_libro_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.libro_libro DROP CONSTRAINT libro_libro_pkey;
       public         parcial2    false    215                       2606    25194 ,   prestamos_prestamos prestamos_prestamos_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.prestamos_prestamos
    ADD CONSTRAINT prestamos_prestamos_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.prestamos_prestamos DROP CONSTRAINT prestamos_prestamos_pkey;
       public         parcial2    false    222            �
           2606    25178 $   usuario_usuario usuario_usuario_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.usuario_usuario
    ADD CONSTRAINT usuario_usuario_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.usuario_usuario DROP CONSTRAINT usuario_usuario_pkey;
       public         parcial2    false    218            �
           1259    25151    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         parcial2    false    203            �
           1259    25088 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         parcial2    false    205            �
           1259    25089 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         parcial2    false    205            �
           1259    25074 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         parcial2    false    201            �
           1259    25104 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         parcial2    false    209            �
           1259    25103 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         parcial2    false    209            �
           1259    25118 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         parcial2    false    211            �
           1259    25117 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         parcial2    false    211            �
           1259    25145     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         parcial2    false    207            �
           1259    25141 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         parcial2    false    213            �
           1259    25142 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         parcial2    false    213            �
           1259    25169 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         parcial2    false    216            �
           1259    25168 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         parcial2    false    216                       1259    25205 '   prestamos_prestamos_IDLibro_id_99e17f45    INDEX     q   CREATE INDEX "prestamos_prestamos_IDLibro_id_99e17f45" ON public.prestamos_prestamos USING btree ("IDLibro_id");
 =   DROP INDEX public."prestamos_prestamos_IDLibro_id_99e17f45";
       public         parcial2    false    222                       1259    25206 )   prestamos_prestamos_IDUsuario_id_3fcab4a6    INDEX     u   CREATE INDEX "prestamos_prestamos_IDUsuario_id_3fcab4a6" ON public.prestamos_prestamos USING btree ("IDUsuario_id");
 ?   DROP INDEX public."prestamos_prestamos_IDUsuario_id_3fcab4a6";
       public         parcial2    false    222                       2606    25083 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       parcial2    false    2774    205    201                       2606    25078 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       parcial2    false    203    205    2779                       2606    25069 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       parcial2    false    2769    199    201            	           2606    25098 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       parcial2    false    203    209    2779                       2606    25093 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       parcial2    false    207    209    2787                       2606    25112 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       parcial2    false    211    2774    201            
           2606    25107 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       parcial2    false    211    2787    207                       2606    25131 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       parcial2    false    213    2769    199                       2606    25136 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       parcial2    false    2787    207    213                       2606    25195 M   prestamos_prestamos prestamos_prestamos_IDLibro_id_99e17f45_fk_libro_libro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos_prestamos
    ADD CONSTRAINT "prestamos_prestamos_IDLibro_id_99e17f45_fk_libro_libro_id" FOREIGN KEY ("IDLibro_id") REFERENCES public.libro_libro(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.prestamos_prestamos DROP CONSTRAINT "prestamos_prestamos_IDLibro_id_99e17f45_fk_libro_libro_id";
       public       parcial2    false    2808    215    222                       2606    25200 S   prestamos_prestamos prestamos_prestamos_IDUsuario_id_3fcab4a6_fk_usuario_usuario_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos_prestamos
    ADD CONSTRAINT "prestamos_prestamos_IDUsuario_id_3fcab4a6_fk_usuario_usuario_id" FOREIGN KEY ("IDUsuario_id") REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.prestamos_prestamos DROP CONSTRAINT "prestamos_prestamos_IDUsuario_id_3fcab4a6_fk_usuario_usuario_id";
       public       parcial2    false    2814    222    218            �   B   x�3�4�tOL*�L��t,JLN,b.#N#N��|N����ܤ�D.cNN��<�*�Ԋ��|�=... 0Pd      �      x������ � �      �      x������ � �      �   �  x�]�Qn�0���Sp��	Ж�]���ڨCj	
���8vl�-�?ɟ�?q���v��^�qI/��Vm5��r���{PTn1Xx��h0�l ���Cm1�Bz�<��xP�=J9��`O�O�((�3+*��{��dj��u)Gs�B�I'BP�*���b��!���u�܏S\��VnG �g�Ȼq���T6_�l�V-�)���w�;K�7��I�7�$���F��b]��C��#ce��;3�Y0�v�P�`"��UA8��;Es��o?[�NszyQ�&��\FD�	ȯ-�;���OC4g�T�>�$S��y"�D
1/SENu�.1�|�lk�k��"*ل�""���9�S
��?�l��5l���@��U�V,�?�mD�����]>���M���      �   �   x���MO�0��s�����kGI��0b�l�e�,1�à�t�O/^�����at��4'�2"��s 0}�~P*=��ft�~="�ƋGO""Vz�e6<��[5��6PR�E=��&�ڬ����=:�;���zD����"��˨K����0��JC�=ɭ,ױ2�OW�M_,?�\�r��$)����C?9�8��r�wu��}�OC�!�q贛4Q���?޹��xƁ����a�A[8      �      x������ � �      �      x������ � �      �     x�}�=n�0�Y>E���E�*m��)�ܽ��Ŋh��Hb" XV�b�a6&gZA�$l��q�ݶ�������J��ޥ�$ڥ&�H>I
�`��ՎL���&�]�g&�.i*u�b!��U��3k�6�@Mz>2���e9I�V8����%�ӽ�>H� ȕ��C[�F�J�ʹP.nP;����t>R�l��~���}��#� Ɏ�ǐ�0�`��K.P��S{>%���EHu?�2=B��*�Z�1���_-g���r�hy��9텿�,�����      �   |   x�M���0���� ��#���cѨ�6U����	.�?KvGaL1�,g�
�_TXS4��qlͤRN�����d_g������k�.4�A�)��Ees��^]��/�nOE�<$�_�c��M=a      �   �  x���M�� F��)����3d7�	1	�F��p�s��v"�'Ά�ţ\؜����u�� �npə�!@`��'��#�(J��Hc����`���%As�ݰa@$�-v���K.4\u����:��9�W��~g�;#�9%��֙�>�{w�VYR��%~�"���6t�у��*�P-/�v�G��z��w1��J^��Kwv��VQ�(J
J.(zCM1/�7�ۤp*�z7�P�#�,�?�u=DP�jO ,���LLE��7���G'��0Sp��l�cra�[��"m"ABm6��g{+��t�l���������?OkE��t��U;�)Ba%���~8z	%�(��B��.�O�k�m�H,�ӘY=�u}��u?c�����<��ͅ��(2�팲����'L��7�j��U���tb�Lq2�=9��)vD8HA��"��Σ'<�0^f�\�Z!�lL��O
�G�!��Bֳ�v��?%#�      �     x��Y��0  �o9�\��e+�lB4(�ƚIV`���l����bH�9E��s�P�~h��g�?�|6�,\I�|���.�,)}�R}W��]�h$OQZn��v�)�]{�U�c>�hc�D��UC���.8M��� ���Ks��v7�G�f6J�;YR�q7O�k� �U<�4^^L���� [��M!���-up�kn��jMT���:f�1�7���'�c,����#[	֖��g���B �?�65ek`Y�*�����$���^e      �   T   x�3�4B�`�`O�WW?G?�`NW �F\f���Ɯ9��
��y����F@�fJ�+�9� u�`uX�1���qqq � �      �   9   x�3��44�44�4�4�2�4��9�������������i	a����qqq �@
�      �   T   x�3�4�4�4��I��K���N��KM��46243513���2"�Ӕ�Ȕ��Ș3,1/��8�*NN3�"�Ģ�|lJb���� %�"�     