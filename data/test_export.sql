PGDMP     ;                     x            retail_store_sales    12.1    12.1     P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    16466    retail_store_sales    DATABASE     p   CREATE DATABASE retail_store_sales WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
 "   DROP DATABASE retail_store_sales;
                postgres    false            �            1259    16467    product    TABLE     h   CREATE TABLE public.product (
    id character varying NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16475    sales    TABLE     u   CREATE TABLE public.sales (
    id character varying NOT NULL,
    sale_date timestamp without time zone NOT NULL
);
    DROP TABLE public.sales;
       public         heap    postgres    false            �            1259    16483 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id character varying NOT NULL,
    sale_id character varying NOT NULL,
    product_id character varying NOT NULL,
    quantity_sold bigint NOT NULL,
    total_sell_price real NOT NULL
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            K          0    16467    product 
   TABLE DATA           +   COPY public.product (id, name) FROM stdin;
    public          postgres    false    202   �       L          0    16475    sales 
   TABLE DATA           .   COPY public.sales (id, sale_date) FROM stdin;
    public          postgres    false    203   �       M          0    16483 
   sales_item 
   TABLE DATA           ^   COPY public.sales_item (id, sale_id, product_id, quantity_sold, total_sell_price) FROM stdin;
    public          postgres    false    204   �       �           2606    16474    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    202            �           2606    16490    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    204            �           2606    16482    sales sales_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public            postgres    false    203            �           2606    16496    sales_item product_id    FK CONSTRAINT     y   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public.product(id);
 ?   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT product_id;
       public          postgres    false    3014    204    202            �           2606    16491    sales_item sale_id    FK CONSTRAINT     q   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sale_id FOREIGN KEY (sale_id) REFERENCES public.sales(id);
 <   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sale_id;
       public          postgres    false    204    3016    203            K   :   x�34tt�,(�O)M.1�22rr�񌸌���a<c.τ�����3����� L��      L   �  x�e�K�*E��*��t!� {��0��ί����$�����(��B0���A����C; �q, oh;�K�E�NX�l��qn�ut��\* � [!7:�p7:�l卛�T�@ Y�f77�:pي��
�*^
�q�[[�{�w�`��5�� v���O�O~� }\�b�s����_��VV���_��ù$���ts����4�� H��g0�\䪤\4��R:��AZi�@�k{Ơ��(m��5a
S}��M��\wW���X��.���kX��rK��Ǩ�($ƛ8ũ�>�(m�s�+�r�p�X���1%6[�qmVy�hҘ4<�pN�a�&Mi�����DN�5iNsyJ,O+��T��s�iMkS@n	g���^��r>��`�(��^�s?W �.P��~�@��+X����Y0��C�*�����SXN�e0�܀ˀ��X`i��P[�D�+j8��L9�x�K ��*[����y���oR�̀�~�k
[��(��n �";�����EP�A�y|�[���Z���Kw���X�e�B�X�{�^F�|\	/G-*��.�6Ob?��>gh���5�����k�F���r�%}��7e3��D�Ч �J'�oN����
���$���OЌ �Dߠ��Q��f$�*�����|b���Sx��b�S�u��U �FU Ox
���@F����e���b%suR���J�S�q�b%-9u�=�Z�KK��Ԋ.-q�S���U��^�ܥ\�y���F�ݫL�S������V ^VN;��O���ϠV�������ֆ=�U������*ʓ���*]�!�Q��˴�g*V�]����Bn��:ҖJ���|�Z�<
8.�z_�Q6�<�(�����(d�p���rV��^�C_�ë��.�wɝT��W_R���W
�=��WF��
h=���c�G�      M   �  x�]�I��*E�x1HCw��I:���_ǿF��\�;s�ZLDh�1�cȁb�)-K�@Z��!�\C���)�C��c�E�9p�80c}�!�P��h25	%�ǘ�=���1z����i6�$h�J��漮�s��v!�`���`�B�I��El�(�RX�l�Kq�4P!��jB�OJj�<U��G>��B�5c�E0�X���㰰�x2�+'c�
���g��
.ƺJ��`e��r�W�F��S,m�+�I�"�Q���SB�n�]���A� ����1I��Lr�EB�~Y�1�3H�b�khP����Af�]\�J5�U�ȃ4iAY|������!�!��|R¹�|��t��].ƺr�u_�SiL��Z*�tJ����TSiJGJ����f��@�9�4��� ����F@oI׌����m�V�i���%�]�D9g�j�+����r��?�Qb��ܖ(
y�>��l���s	y��%��e2�uЛ�`f�K��X��1'S�ӚW�Z��f���Qc(c�
*���*(6v� +Q�S�	�h'cxҨS���e�*U����h��R|��X���i@���kY]\P�l�W<*�F�gAF&cNmޘS�k�N�1�Vc�Ij�-�>q[l��ټ���Y�=t�#i�TF2��Ũ/T�^u�:HQcvT
�/��u�L8W��^��5ԩN>�1٠���)R�:��	��^����V�]F+0Z�rթ�\� 6���3I]�o``b�������� X6v� ��ԦK�U�����k�č�w!����	l�5@��������a�K߲�� 
�ֶ��X�9&�����5E�������Kߋ(�/z]fL�8��\+�x��c-5�<��X�◫0dʇ?.k�p���u0\ ~�s��a���`�/�G#�#�1`��_������'�k$����q2`(�Wz��������@P��;�}�ԽѾ��7Uݛ�|�T���+?�@T?���������m� ȍ�K A�'=}�h�����.�d���V����*�WmŎ陞WmEk͏���YB��v���<�Ýf�C[��4�6}��r\���O�vkر>�?ukرnu��-��|�x�I�r���]�n�S't�P���o`T򑀄�$I�����&:�UKD��_>qo�܄-��O����ǵ�Nx��xE)���P-1��.��=诃q���Kbo�S�>�9j�ɇKq�cb�p�C�2����@����=X�����<��S">�ʳ��Մ�o��%��0A�`^��G�+��V����s�#&��}pd���G���+|�sd��o��CO#��2~���<�t-ศ�ӱ	Zd��B���E�{ݎw�|�G!�m���=;n��8��}q_�ʯ÷����a�h^��     