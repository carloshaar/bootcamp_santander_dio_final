PGDMP     9    '            	    {            postgres    15.3    15.3      �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     s   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                azure_pg_admin    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   azure_pg_admin    false    3998                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                azure_pg_admin    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   azure_pg_admin    false    8            �            1259    24832 
   department    TABLE     -  CREATE TABLE public.department (
    dname character varying(15) NOT NULL,
    dnumber integer NOT NULL,
    mgr_ssn character(9) NOT NULL,
    mgr_start_date date,
    dept_create_date date,
    sname character varying(40),
    CONSTRAINT chk_date_dept CHECK ((dept_create_date < mgr_start_date))
);
    DROP TABLE public.department;
       public         heap 
   HaarCarlos    false    8            �            1259    24851 	   dependent    TABLE     �   CREATE TABLE public.dependent (
    essn character(9) NOT NULL,
    dependent_name character varying(15) NOT NULL,
    sex character(1),
    bdate date,
    relationship character varying(8)
);
    DROP TABLE public.dependent;
       public         heap 
   HaarCarlos    false    8            �            1259    24861    dept_locations    TABLE     s   CREATE TABLE public.dept_locations (
    dnumber integer NOT NULL,
    dlocation character varying(15) NOT NULL
);
 "   DROP TABLE public.dept_locations;
       public         heap 
   HaarCarlos    false    8            �            1259    24845    employee    TABLE     �  CREATE TABLE public.employee (
    fname character varying(15) NOT NULL,
    minit character(1),
    lname character varying(15) NOT NULL,
    ssn character(9) NOT NULL,
    bdate date,
    address character varying(30),
    sex character(1),
    salary numeric(10,2),
    super_ssn character(9),
    dno integer NOT NULL,
    supname character varying,
    CONSTRAINT chk_salary_employee CHECK ((salary > 2000.0))
);
    DROP TABLE public.employee;
       public         heap 
   HaarCarlos    false    8            �            1259    24866    project    TABLE     �   CREATE TABLE public.project (
    pname character varying(15) NOT NULL,
    pnumber integer NOT NULL,
    plocation character varying(15),
    dnum integer NOT NULL
);
    DROP TABLE public.project;
       public         heap 
   HaarCarlos    false    8            �            1259    24888 
   supervisor    TABLE     �   CREATE TABLE public.supervisor (
    fname character varying(15),
    lname character varying(15),
    ssn character varying,
    super_ssn character(9)
);
    DROP TABLE public.supervisor;
       public         heap 
   HaarCarlos    false    8            �            1259    24873    works_on    TABLE     |   CREATE TABLE public.works_on (
    essn character(9) NOT NULL,
    pno integer NOT NULL,
    hours numeric(3,1) NOT NULL
);
    DROP TABLE public.works_on;
       public         heap 
   HaarCarlos    false    8            �          0    24832 
   department 
   TABLE DATA           f   COPY public.department (dname, dnumber, mgr_ssn, mgr_start_date, dept_create_date, sname) FROM stdin;
    public       
   HaarCarlos    false    222   f$       �          0    24851 	   dependent 
   TABLE DATA           S   COPY public.dependent (essn, dependent_name, sex, bdate, relationship) FROM stdin;
    public       
   HaarCarlos    false    224   %       �          0    24861    dept_locations 
   TABLE DATA           <   COPY public.dept_locations (dnumber, dlocation) FROM stdin;
    public       
   HaarCarlos    false    225   �%       �          0    24845    employee 
   TABLE DATA           r   COPY public.employee (fname, minit, lname, ssn, bdate, address, sex, salary, super_ssn, dno, supname) FROM stdin;
    public       
   HaarCarlos    false    223   &       �          0    24866    project 
   TABLE DATA           B   COPY public.project (pname, pnumber, plocation, dnum) FROM stdin;
    public       
   HaarCarlos    false    226   �'       �          0    24888 
   supervisor 
   TABLE DATA           B   COPY public.supervisor (fname, lname, ssn, super_ssn) FROM stdin;
    public       
   HaarCarlos    false    228   .(       �          0    24873    works_on 
   TABLE DATA           4   COPY public.works_on (essn, pno, hours) FROM stdin;
    public       
   HaarCarlos    false    227   �(       �           2606    24855    dependent dependent_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.dependent
    ADD CONSTRAINT dependent_pkey PRIMARY KEY (essn, dependent_name);
 B   ALTER TABLE ONLY public.dependent DROP CONSTRAINT dependent_pkey;
       public         
   HaarCarlos    false    224    224            �           2606    24837    department pk_dept 
   CONSTRAINT     U   ALTER TABLE ONLY public.department
    ADD CONSTRAINT pk_dept PRIMARY KEY (dnumber);
 <   ALTER TABLE ONLY public.department DROP CONSTRAINT pk_dept;
       public         
   HaarCarlos    false    222            �           2606    24865     dept_locations pk_dept_locations 
   CONSTRAINT     n   ALTER TABLE ONLY public.dept_locations
    ADD CONSTRAINT pk_dept_locations PRIMARY KEY (dnumber, dlocation);
 J   ALTER TABLE ONLY public.dept_locations DROP CONSTRAINT pk_dept_locations;
       public         
   HaarCarlos    false    225    225            �           2606    24850    employee pk_employee 
   CONSTRAINT     S   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT pk_employee PRIMARY KEY (ssn);
 >   ALTER TABLE ONLY public.employee DROP CONSTRAINT pk_employee;
       public         
   HaarCarlos    false    223            �           2606    24870    project project_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (pnumber);
 >   ALTER TABLE ONLY public.project DROP CONSTRAINT project_pkey;
       public         
   HaarCarlos    false    226            �           2606    24839    department unique_name_dept 
   CONSTRAINT     W   ALTER TABLE ONLY public.department
    ADD CONSTRAINT unique_name_dept UNIQUE (dname);
 E   ALTER TABLE ONLY public.department DROP CONSTRAINT unique_name_dept;
       public         
   HaarCarlos    false    222            �           2606    24872    project unique_project 
   CONSTRAINT     R   ALTER TABLE ONLY public.project
    ADD CONSTRAINT unique_project UNIQUE (pname);
 @   ALTER TABLE ONLY public.project DROP CONSTRAINT unique_project;
       public         
   HaarCarlos    false    226                        2606    24877    works_on works_on_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.works_on
    ADD CONSTRAINT works_on_pkey PRIMARY KEY (essn, pno);
 @   ALTER TABLE ONLY public.works_on DROP CONSTRAINT works_on_pkey;
       public         
   HaarCarlos    false    227    227                       2606    24856    dependent fk_dependent    FK CONSTRAINT     v   ALTER TABLE ONLY public.dependent
    ADD CONSTRAINT fk_dependent FOREIGN KEY (essn) REFERENCES public.employee(ssn);
 @   ALTER TABLE ONLY public.dependent DROP CONSTRAINT fk_dependent;
       public       
   HaarCarlos    false    3830    224    223                       2606    24878    works_on fk_employee_works_on    FK CONSTRAINT     }   ALTER TABLE ONLY public.works_on
    ADD CONSTRAINT fk_employee_works_on FOREIGN KEY (essn) REFERENCES public.employee(ssn);
 G   ALTER TABLE ONLY public.works_on DROP CONSTRAINT fk_employee_works_on;
       public       
   HaarCarlos    false    3830    223    227                       2606    24883    works_on fk_project_works_on    FK CONSTRAINT     ~   ALTER TABLE ONLY public.works_on
    ADD CONSTRAINT fk_project_works_on FOREIGN KEY (pno) REFERENCES public.project(pnumber);
 F   ALTER TABLE ONLY public.works_on DROP CONSTRAINT fk_project_works_on;
       public       
   HaarCarlos    false    227    226    3836            �   �   x�5ͽ�0�}
^����Qc]X\n��p�����O��-'����p�c�+:��j��f�?xc�iNTu+��2,�R�����"��w�4�l�S�.�i�H�^�U�=�;���o�YhB��_^鸳>����<��IJ���/�      �   �   x�M���0E��y��kKM���	G�!!� ����;��{����kN�r�P��|o'��K��F��*��B�s��>JP��0?Y�>s֐V����h��_��X����i+�GѤbT:Z�M�G��䚼RǾ{W5Om"]���rx�	!>L�?L      �   9   x�3���/-.���2�.ILK�/J�2�tJ��I�,J2�K��r�@�0�1z\\\ ,��      �   �  x����N1���>E^`���Y�2)Dh�R� �*n�`�o�y��!Q��#˲V��;�ӆmq�ِ�p�Yk8 �jHJ��Z��zx�Aw���!.���$_U;lfXl���V���yV���$��(I�!=�ε�8h)��~3`0�!��]�<i]��|�M�a���i�B�Y���oͻ�gx�����������U�Wi�w��F�4hHI�5�v��f�Q�/�}��Z��= �sG��J����kI�¸cߋ?�K���5�h΂FS�c�<���XM7���{�a��侟B�$՞?
�,�����p,	w(E��+�1$�MV9�� }��%3씧:)�WYX�@;�"���T�^�,���ʰ�Z��'}}��xQU�_��      �   y   x�U��
�0��s�0�n���I��8��tj#Y���;�]���S��fgp��(*���PC_&�D�����&y����X�,.�*�B���E'��XW��ᑟ#g�fhV�u��o��1�      �   W   x�s+J��������K�466611��+5//3-��3<1''19�������������J�M-�t�/J細�03�gq��qqq }�      �   q   x�]��	�0�o3L���K���J�Bz܏E���EL�n�?�9�{�f�����ݼ�d U�$�	����#k���!��!�Պ�[;$�pS�8�^�ND���k�ꭵB0�     