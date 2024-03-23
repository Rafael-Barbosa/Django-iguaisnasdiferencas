# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Deficiencia(models.Model):
    id = models.IntegerField(primary_key=True)
    nome = models.CharField(max_length=80)
    cid = models.CharField(max_length=5)
    descricao = models.CharField(max_length=255, blank=True, null=True)
    create_time = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'deficiencia'


class Endereco(models.Model):
    id = models.IntegerField(primary_key=True)
    logradouro = models.CharField(max_length=255)
    numero = models.IntegerField()
    bairro = models.CharField(max_length=45, blank=True, null=True)
    cidade = models.CharField(max_length=25)
    cep = models.CharField(max_length=8)
    uf = models.CharField(max_length=2)
    complemento = models.CharField(max_length=200, blank=True, null=True)
    create_time = models.DateTimeField(blank=True, null=True)
    pessoa = models.ForeignKey('Pessoa', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'endereco'


class Pessoa(models.Model):
    id = models.IntegerField(primary_key=True)
    nome = models.CharField(max_length=80)
    email = models.CharField(max_length=255, blank=True, null=True)
    genero = models.CharField(max_length=1)
    estcivil = models.CharField(max_length=1)
    fone = models.CharField(max_length=12)
    fone2 = models.CharField(max_length=12, blank=True, null=True)
    renda = models.CharField(max_length=15)
    escolaridade = models.CharField(max_length=30)
    deficiencia_id = models.IntegerField()
    create_time = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'pessoa'


class Pessoadeficiencia(models.Model):
    id = models.IntegerField(primary_key=True)
    nome = models.CharField(max_length=80)
    descricao = models.CharField(max_length=255, blank=True, null=True)
    create_time = models.DateTimeField(blank=True, null=True)
    pessoa = models.ForeignKey(Pessoa, models.DO_NOTHING)
    deficiencia = models.ForeignKey(Deficiencia, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'pessoadeficiencia'


class Image(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=20, null=False)
    image_thumbnail = models.ImageField(upload_to='images/', null=False)
    image_full = models.ImageField(upload_to='images/', null=False)
    description = models.TextField(max_length=250, default='Descrição', null=False)
    short_description = models.TextField(max_length=40, default='Descrição curta', null=False)


    def __str__(self):
        return self.title
