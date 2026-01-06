.class public Lcom/samsung/security/fabric/crypto/FabricEscrowVaultUtils;
.super Ljava/lang/Object;
.source "FabricEscrowVaultUtils.java"


# static fields
.field public static final ROOT_DRKv2:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDkjCCAnqgAwIBAgIJAO6ORukA8ikRMA0GCSqGSIb3DQEBCwUAMFkxCzAJBgNVBAYTAktSMRMwEQYDVQQHDApTdXdvbiBjaXR5MRcwFQYDVQQLDA5TYW1zdW5nIE1vYmlsZTEcMBoGA1UEAwwTU2Ftc3VuZyBjb3Jwb3JhdGlvbjAeFw0xMzA1MzAxMzExNTRaFw0zMzA1MjUxMzExNTRaMFkxCzAJBgNVBAYTAktSMRMwEQYDVQQHDApTdXdvbiBjaXR5MRcwFQYDVQQLDA5TYW1zdW5nIE1vYmlsZTEcMBoGA1UEAwwTU2Ftc3VuZyBjb3Jwb3JhdGlvbjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAODCgYdVr9LR4I2jcoAjufYxgN8JMQbbUrCYWphrHlzzUG1mv4KjqyZCe1oNugY/5OQOhlWnelmkw9VtwpvDfsA4M0PDvIUIrWXq719omUzE511VleSDDigSFp/UxMZsDO8cCYDBtfk1QufH7s+GOgXdlBuswnzbICFubGqkO4v0FSXJMqKHAKruddKp+4YO2tbFer52qDu9blEZo9Qgi2cw3iPCKZ5r0+T0PnX7heBuUUcUskQd8Ozp5MThRf5QbE6KEb9aswpHDSBEIM+L5c3x4Bt3bq0ktJHWn00NTeUyklhKdJAGbdVfUTqxMt1X/lsCHq8WDCHCXdddtKMkEd0CAwEAAaNdMFswHQYDVR0OBBYEFBo4SVkuMiGCDHcmDcoRrd2cykN9MB8GA1UdIwQYMBaAFBo4SVkuMiGCDHcmDcoRrd2cykN9MAwGA1UdEwQFMAMBAf8wCwYDVR0PBAQDAgEGMA0GCSqGSIb3DQEBCwUAA4IBAQBT2Ut7c95FD8pv6OrMhCpq0oLKzYVkvPrGSFT6GOlZ+g2j5w8PQltVhayyJL/CUOHMdViJI5oWDCsRx06qpulZWhjF1saAn3ZK40dnI3H1HhtO1b8ezt+YdXQPPAomjLVacNrrlZIvDNOL59/3pSqmW2AwNUusNzxr9vplO+GywFTR6C51zPSj+Nvyhrqt5W/XtaiQO/GK6Asrn1+38ovHkE3LuSvseK9656DWOLzcGlpEjFODn3K6a7y7jtJ875SPbjBJ4r6+mz7YhtDQz3bY4lRTx7qXKHXnyvdMTSMPCuYzggMhZky7HvqWZdZFuZ0t+qY1AnJADO/zbBCLOwta\n-----END CERTIFICATE-----"

.field public static final ROOT_EVHSM:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIC+jCCAlugAwIBAgIUd1EqkRsLBHp2rCHiQbFukpHXzhwwCgYIKoZIzj0EAwQw\ngYYxCzAJBgNVBAYTAktSMSMwIQYDVQQKDBpTYW1zdW5nIEVsZWN0cm9uaWNzIENv\nLkx0ZDEjMCEGA1UECwwaTW9iaWxlIGVYcGVyaWVuY2UgQnVzaW5lc3MxEzARBgNV\nBAcMClN1d29uIGNpdHkxGDAWBgNVBAMMD0tub3hNYXRyaXggUm9vdDAgFw0yMzA4\nMDMwNTUwMTZaGA8yMDUzMDcyNjA1NTAxNlowgYYxCzAJBgNVBAYTAktSMSMwIQYD\nVQQKDBpTYW1zdW5nIEVsZWN0cm9uaWNzIENvLkx0ZDEjMCEGA1UECwwaTW9iaWxl\nIGVYcGVyaWVuY2UgQnVzaW5lc3MxEzARBgNVBAcMClN1d29uIGNpdHkxGDAWBgNV\nBAMMD0tub3hNYXRyaXggUm9vdDCBmzAQBgcqhkjOPQIBBgUrgQQAIwOBhgAEAMhN\nlXFzrjeJh/qD6VZXa6hvpYcMDRQsLFds2fflg5ig+9eulaPKLQEmeVClOzJ3siMS\nOX2tyheJrFG7gCUfn4y1AHw33azPU54V2/gBZrJHuYEovuLCInvJWkBL1J/6NGod\nVyqXcEjjSFTs4+OOAS2CYlIlnJ/myenO4u+mhJKf3d9vo2AwXjAdBgNVHQ4EFgQU\nFcrg6WC+P1Ygp0ftafKGb2CYwY4wHwYDVR0jBBgwFoAUFcrg6WC+P1Ygp0ftafKG\nb2CYwY4wDwYDVR0TAQH/BAUwAwEB/zALBgNVHQ8EBAMCAQYwCgYIKoZIzj0EAwQD\ngYwAMIGIAkIA8XTo9styfYbGi9/s7Wc0UnOh/qxQbyxqeMl6meUf//tCLazs6s7p\nhBg5j9RzPvX7BjYpnlTbcWAdRxo+J+5EUzQCQgDmN8GaOBf/7zpIgAtYM+sUyg9q\nHNWsQG1EqYfMdIVyWWaPq8G2St+LLB4/4EwKG1fDQlvnALoFQL7j4p/DaPxn1w==\n-----END CERTIFICATE-----"

.field public static final ROOT_SAKmV1:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDFTCCAnagAwIBAgIEXWYqIzAKBggqhkjOPQQDBDCBmjELMAkGA1UEBhMCS1IxDjAMBgNVBAcMBVN1d29uMSYwJAYDVQQKDB1TYW1zdW5nIEVsZWN0cm9uaWNzIENvLiwgTHRkLjEnMCUGA1UECwweTW9iaWxlIENvbW11bmljYXRpb25zIERpdmlzaW9uMSowKAYDVQQDDCFTYW1zdW5nIEF0dGVzdGF0aW9uIFJvb3QgQ0EgZm9yIE0wIBcNMTkwODI4MDcxNTQ3WhgPMjA1NDA4MTkwNzE1NDdaMIGaMQswCQYDVQQGEwJLUjEOMAwGA1UEBwwFU3V3b24xJjAkBgNVBAoMHVNhbXN1bmcgRWxlY3Ryb25pY3MgQ28uLCBMdGQuMScwJQYDVQQLDB5Nb2JpbGUgQ29tbXVuaWNhdGlvbnMgRGl2aXNpb24xKjAoBgNVBAMMIVNhbXN1bmcgQXR0ZXN0YXRpb24gUm9vdCBDQSBmb3IgTTCBmzAQBgcqhkjOPQIBBgUrgQQAIwOBhgAEAfV3hDfJYOqecbzFVhuNj9kIv2kSl9qz0TYCvdlJTvTv0yBQihwtQFgixYrT1RKMOVvshIAtsDomMYHqWPOUzqB9ALhJC6IgupXWxdrjVVN62GEsrVgCYNxhSndZfVSw5saMefB8sNiZnXeVUjmxokxUP0oCrJ9n20D7aRpTcYBH3emPo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUkWGLTHho0EqkKg3vJYpw6PuCVSwwHwYDVR0jBBgwFoAUkWGLTHho0EqkKg3vJYpw6PuCVSwwCgYIKoZIzj0EAwQDgYwAMIGIAkIB3GIJQoKsaPAnV+JFz4htNinRTqduII6atHPHdCngvVz/NkV7XxrY4NCZpj3EW1wghAD4Umo22cflyjkg0563RpECQgEIcMHaehES+XUC+X7swC8pgEZs778d/Dm1LxcoXigqXdHrs8q+jYJJ6d4mSj3SF3ggOV5UjWfG3UpZQksdNkmhxA==\n-----END CERTIFICATE-----"

.field public static final ROOT_SAKv1:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICjzCCAfCgAwIBAgIEWQK/tDAKBggqhkjOPQQDAjBZMQswCQYDVQQGEwJLUjETMBEGA1UEBxMKU3V3b24gY2l0eTEXMBUGA1UECxMOU2Ftc3VuZyBNb2JpbGUxHDAaBgNVBAMTE1NhbXN1bmcgY29ycG9yYXRpb24wHhcNMTcwNDI4MDQwNjEyWhcNMzcwNDIzMDQwNjEyWjBZMQswCQYDVQQGEwJLUjETMBEGA1UEBxMKU3V3b24gY2l0eTEXMBUGA1UECxMOU2Ftc3VuZyBNb2JpbGUxHDAaBgNVBAMTE1NhbXN1bmcgY29ycG9yYXRpb24wgZswEAYHKoZIzj0CAQYFK4EEACMDgYYABAGz1COv/9ESGRdbuNSqNj0o3BZpzivn6R1QaT5NmNGjVgRrjsDHCPoAmxs6OjhCweJhGJZMQu8V6K4GwqrK4XTHIAAq8Oh8GqsSrX8KTGjabPtDg1B6zeDhqFKO2BRKHSTzl9jDAeMJ4vJnmQSqAcb06k4fnboUUAreyVJSALxE5tvHK6NjMGEwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFA2g7yBXBWdctoFVFEkd9zyQ9BO6MB8GA1UdIwQYMBaAFA2g7yBXBWdctoFVFEkd9zyQ9BO6MAoGCCqGSM49BAMCA4GMADCBiAJCANEFD3SFc3gWkMbm142lCpvjV6bt++/mBUUJCsLiyECe/HESJNQpvebXssVai1h0AHGpVrENpGz3pqQuO00+HyRAAkIBU1Cou6PxjFSxJ0t2zrjv2g54tDXaxGaSH57QQa1cHTKuP5pjbXTkE+IQoAfA2chKOzpVkhgk3zRkRPonXPI1Usg=\n-----END CERTIFICATE-----"

.field public static final ROOT_SAKv2:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICjzCCAfCgAwIBAgIEXHYjDTAKBggqhkjOPQQDBDBZMQswCQYDVQQGEwJLUjETMBEGA1UEBxMKU3V3b24gY2l0eTEXMBUGA1UECxMOU2Ftc3VuZyBNb2JpbGUxHDAaBgNVBAMTE1NhbXN1bmcgY29ycG9yYXRpb24wHhcNMTkwMjI3MDU0MTMzWhcNMzkwMjIyMDU0MTMzWjBZMQswCQYDVQQGEwJLUjETMBEGA1UEBxMKU3V3b24gY2l0eTEXMBUGA1UECxMOU2Ftc3VuZyBNb2JpbGUxHDAaBgNVBAMTE1NhbXN1bmcgY29ycG9yYXRpb24wgZswEAYHKoZIzj0CAQYFK4EEACMDgYYABAGFsa4uumqXkjZYmasTmQRVk6j52ADjqYqtUl/+yDN/Oza7sz1zVj1mQISKJiSFMUT289tqyZR9fJvCBnYQzfQDUAE93XbifclsQN+wH/CcwfUByCwnIkU9sRNmLLjYWHCL7YEIDltwd7tKt2REhhKx0FFooGhmxqnEHSAA6zSNI9Ffk6NjMGEwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFGbsTn+ECfTAKlYSkIP+hkA01S7/MB8GA1UdIwQYMBaAFGbsTn+ECfTAKlYSkIP+hkA01S7/MAoGCCqGSM49BAMEA4GMADCBiAJCAeGMgCL5SfTUycZWd+37+cQIFSn5E1AzLIDw1ps1heoWoTj0dM9SPmWBo/TlWZrbtD4GyH2VI7vz3wkpB9W7oT9RAkIAluAfQFNEqCoYndVEyGhu5RjG412BQdNbh8Y5NzZymu4/Zg7pC0ctus6hdJ8J5DjekOEh6tTy8poqNYC+wvHgAJg=\n-----END CERTIFICATE-----"

.field public static final VERSION_DRK_V2:Ljava/lang/String; = "DRK_V2"

.field public static final VERSION_SAK_V1:Ljava/lang/String; = "SAK_V1"

.field public static final VERSION_SAK_V2:Ljava/lang/String; = "SAK_V2"

.field public static final VERSION_SAKm_V1:Ljava/lang/String; = "SAKmV1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRoot(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p0, "issuer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 124
    const-string v0, "FK-FabricEscrowVault"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 129
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 131
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    const-string v2, "SAK_V1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIICjzCCAfCgAwIBAgIEWQK/tDAKBggqhkjOPQQDAjBZMQswCQYDVQQGEwJLUjETMBEGA1UEBxMKU3V3b24gY2l0eTEXMBUGA1UECxMOU2Ftc3VuZyBNb2JpbGUxHDAaBgNVBAMTE1NhbXN1bmcgY29ycG9yYXRpb24wHhcNMTcwNDI4MDQwNjEyWhcNMzcwNDIzMDQwNjEyWjBZMQswCQYDVQQGEwJLUjETMBEGA1UEBxMKU3V3b24gY2l0eTEXMBUGA1UECxMOU2Ftc3VuZyBNb2JpbGUxHDAaBgNVBAMTE1NhbXN1bmcgY29ycG9yYXRpb24wgZswEAYHKoZIzj0CAQYFK4EEACMDgYYABAGz1COv/9ESGRdbuNSqNj0o3BZpzivn6R1QaT5NmNGjVgRrjsDHCPoAmxs6OjhCweJhGJZMQu8V6K4GwqrK4XTHIAAq8Oh8GqsSrX8KTGjabPtDg1B6zeDhqFKO2BRKHSTzl9jDAeMJ4vJnmQSqAcb06k4fnboUUAreyVJSALxE5tvHK6NjMGEwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFA2g7yBXBWdctoFVFEkd9zyQ9BO6MB8GA1UdIwQYMBaAFA2g7yBXBWdctoFVFEkd9zyQ9BO6MAoGCCqGSM49BAMCA4GMADCBiAJCANEFD3SFc3gWkMbm142lCpvjV6bt++/mBUUJCsLiyECe/HESJNQpvebXssVai1h0AHGpVrENpGz3pqQuO00+HyRAAkIBU1Cou6PxjFSxJ0t2zrjv2g54tDXaxGaSH57QQa1cHTKuP5pjbXTkE+IQoAfA2chKOzpVkhgk3zRkRPonXPI1Usg=\n-----END CERTIFICATE-----"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v2, "in":Ljava/io/InputStream;
    goto :goto_0

    .line 133
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    const-string v2, "SAK_V2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIICjzCCAfCgAwIBAgIEXHYjDTAKBggqhkjOPQQDBDBZMQswCQYDVQQGEwJLUjETMBEGA1UEBxMKU3V3b24gY2l0eTEXMBUGA1UECxMOU2Ftc3VuZyBNb2JpbGUxHDAaBgNVBAMTE1NhbXN1bmcgY29ycG9yYXRpb24wHhcNMTkwMjI3MDU0MTMzWhcNMzkwMjIyMDU0MTMzWjBZMQswCQYDVQQGEwJLUjETMBEGA1UEBxMKU3V3b24gY2l0eTEXMBUGA1UECxMOU2Ftc3VuZyBNb2JpbGUxHDAaBgNVBAMTE1NhbXN1bmcgY29ycG9yYXRpb24wgZswEAYHKoZIzj0CAQYFK4EEACMDgYYABAGFsa4uumqXkjZYmasTmQRVk6j52ADjqYqtUl/+yDN/Oza7sz1zVj1mQISKJiSFMUT289tqyZR9fJvCBnYQzfQDUAE93XbifclsQN+wH/CcwfUByCwnIkU9sRNmLLjYWHCL7YEIDltwd7tKt2REhhKx0FFooGhmxqnEHSAA6zSNI9Ffk6NjMGEwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFGbsTn+ECfTAKlYSkIP+hkA01S7/MB8GA1UdIwQYMBaAFGbsTn+ECfTAKlYSkIP+hkA01S7/MAoGCCqGSM49BAMEA4GMADCBiAJCAeGMgCL5SfTUycZWd+37+cQIFSn5E1AzLIDw1ps1heoWoTj0dM9SPmWBo/TlWZrbtD4GyH2VI7vz3wkpB9W7oT9RAkIAluAfQFNEqCoYndVEyGhu5RjG412BQdNbh8Y5NzZymu4/Zg7pC0ctus6hdJ8J5DjekOEh6tTy8poqNYC+wvHgAJg=\n-----END CERTIFICATE-----"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 135
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_1
    const-string v2, "SAKmV1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIIDFTCCAnagAwIBAgIEXWYqIzAKBggqhkjOPQQDBDCBmjELMAkGA1UEBhMCS1IxDjAMBgNVBAcMBVN1d29uMSYwJAYDVQQKDB1TYW1zdW5nIEVsZWN0cm9uaWNzIENvLiwgTHRkLjEnMCUGA1UECwweTW9iaWxlIENvbW11bmljYXRpb25zIERpdmlzaW9uMSowKAYDVQQDDCFTYW1zdW5nIEF0dGVzdGF0aW9uIFJvb3QgQ0EgZm9yIE0wIBcNMTkwODI4MDcxNTQ3WhgPMjA1NDA4MTkwNzE1NDdaMIGaMQswCQYDVQQGEwJLUjEOMAwGA1UEBwwFU3V3b24xJjAkBgNVBAoMHVNhbXN1bmcgRWxlY3Ryb25pY3MgQ28uLCBMdGQuMScwJQYDVQQLDB5Nb2JpbGUgQ29tbXVuaWNhdGlvbnMgRGl2aXNpb24xKjAoBgNVBAMMIVNhbXN1bmcgQXR0ZXN0YXRpb24gUm9vdCBDQSBmb3IgTTCBmzAQBgcqhkjOPQIBBgUrgQQAIwOBhgAEAfV3hDfJYOqecbzFVhuNj9kIv2kSl9qz0TYCvdlJTvTv0yBQihwtQFgixYrT1RKMOVvshIAtsDomMYHqWPOUzqB9ALhJC6IgupXWxdrjVVN62GEsrVgCYNxhSndZfVSw5saMefB8sNiZnXeVUjmxokxUP0oCrJ9n20D7aRpTcYBH3emPo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUkWGLTHho0EqkKg3vJYpw6PuCVSwwHwYDVR0jBBgwFoAUkWGLTHho0EqkKg3vJYpw6PuCVSwwCgYIKoZIzj0EAwQDgYwAMIGIAkIB3GIJQoKsaPAnV+JFz4htNinRTqduII6atHPHdCngvVz/NkV7XxrY4NCZpj3EW1wghAD4Umo22cflyjkg0563RpECQgEIcMHaehES+XUC+X7swC8pgEZs778d/Dm1LxcoXigqXdHrs8q+jYJJ6d4mSj3SF3ggOV5UjWfG3UpZQksdNkmhxA==\n-----END CERTIFICATE-----"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 137
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_2
    const-string v2, "DRK_V2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIIDkjCCAnqgAwIBAgIJAO6ORukA8ikRMA0GCSqGSIb3DQEBCwUAMFkxCzAJBgNVBAYTAktSMRMwEQYDVQQHDApTdXdvbiBjaXR5MRcwFQYDVQQLDA5TYW1zdW5nIE1vYmlsZTEcMBoGA1UEAwwTU2Ftc3VuZyBjb3Jwb3JhdGlvbjAeFw0xMzA1MzAxMzExNTRaFw0zMzA1MjUxMzExNTRaMFkxCzAJBgNVBAYTAktSMRMwEQYDVQQHDApTdXdvbiBjaXR5MRcwFQYDVQQLDA5TYW1zdW5nIE1vYmlsZTEcMBoGA1UEAwwTU2Ftc3VuZyBjb3Jwb3JhdGlvbjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAODCgYdVr9LR4I2jcoAjufYxgN8JMQbbUrCYWphrHlzzUG1mv4KjqyZCe1oNugY/5OQOhlWnelmkw9VtwpvDfsA4M0PDvIUIrWXq719omUzE511VleSDDigSFp/UxMZsDO8cCYDBtfk1QufH7s+GOgXdlBuswnzbICFubGqkO4v0FSXJMqKHAKruddKp+4YO2tbFer52qDu9blEZo9Qgi2cw3iPCKZ5r0+T0PnX7heBuUUcUskQd8Ozp5MThRf5QbE6KEb9aswpHDSBEIM+L5c3x4Bt3bq0ktJHWn00NTeUyklhKdJAGbdVfUTqxMt1X/lsCHq8WDCHCXdddtKMkEd0CAwEAAaNdMFswHQYDVR0OBBYEFBo4SVkuMiGCDHcmDcoRrd2cykN9MB8GA1UdIwQYMBaAFBo4SVkuMiGCDHcmDcoRrd2cykN9MAwGA1UdEwQFMAMBAf8wCwYDVR0PBAQDAgEGMA0GCSqGSIb3DQEBCwUAA4IBAQBT2Ut7c95FD8pv6OrMhCpq0oLKzYVkvPrGSFT6GOlZ+g2j5w8PQltVhayyJL/CUOHMdViJI5oWDCsRx06qpulZWhjF1saAn3ZK40dnI3H1HhtO1b8ezt+YdXQPPAomjLVacNrrlZIvDNOL59/3pSqmW2AwNUusNzxr9vplO+GywFTR6C51zPSj+Nvyhrqt5W/XtaiQO/GK6Asrn1+38ovHkE3LuSvseK9656DWOLzcGlpEjFODn3K6a7y7jtJ875SPbjBJ4r6+mz7YhtDQz3bY4lRTx7qXKHXnyvdMTSMPCuYzggMhZky7HvqWZdZFuZ0t+qY1AnJADO/zbBCLOwta\n-----END CERTIFICATE-----"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 139
    .restart local v2    # "in":Ljava/io/InputStream;
    const-string v3, "ROOT_DRKv2"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIIC+jCCAlugAwIBAgIUd1EqkRsLBHp2rCHiQbFukpHXzhwwCgYIKoZIzj0EAwQw\ngYYxCzAJBgNVBAYTAktSMSMwIQYDVQQKDBpTYW1zdW5nIEVsZWN0cm9uaWNzIENv\nLkx0ZDEjMCEGA1UECwwaTW9iaWxlIGVYcGVyaWVuY2UgQnVzaW5lc3MxEzARBgNV\nBAcMClN1d29uIGNpdHkxGDAWBgNVBAMMD0tub3hNYXRyaXggUm9vdDAgFw0yMzA4\nMDMwNTUwMTZaGA8yMDUzMDcyNjA1NTAxNlowgYYxCzAJBgNVBAYTAktSMSMwIQYD\nVQQKDBpTYW1zdW5nIEVsZWN0cm9uaWNzIENvLkx0ZDEjMCEGA1UECwwaTW9iaWxl\nIGVYcGVyaWVuY2UgQnVzaW5lc3MxEzARBgNVBAcMClN1d29uIGNpdHkxGDAWBgNV\nBAMMD0tub3hNYXRyaXggUm9vdDCBmzAQBgcqhkjOPQIBBgUrgQQAIwOBhgAEAMhN\nlXFzrjeJh/qD6VZXa6hvpYcMDRQsLFds2fflg5ig+9eulaPKLQEmeVClOzJ3siMS\nOX2tyheJrFG7gCUfn4y1AHw33azPU54V2/gBZrJHuYEovuLCInvJWkBL1J/6NGod\nVyqXcEjjSFTs4+OOAS2CYlIlnJ/myenO4u+mhJKf3d9vo2AwXjAdBgNVHQ4EFgQU\nFcrg6WC+P1Ygp0ftafKGb2CYwY4wHwYDVR0jBBgwFoAUFcrg6WC+P1Ygp0ftafKG\nb2CYwY4wDwYDVR0TAQH/BAUwAwEB/zALBgNVHQ8EBAMCAQYwCgYIKoZIzj0EAwQD\ngYwAMIGIAkIA8XTo9styfYbGi9/s7Wc0UnOh/qxQbyxqeMl6meUf//tCLazs6s7p\nhBg5j9RzPvX7BjYpnlTbcWAdRxo+J+5EUzQCQgDmN8GaOBf/7zpIgAtYM+sUyg9q\nHNWsQG1EqYfMdIVyWWaPq8G2St+LLB4/4EwKG1fDQlvnALoFQL7j4p/DaPxn1w==\n-----END CERTIFICATE-----"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 143
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_0
    const-string v3, "Passing root cert to check"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 145
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "Occurred exception error while checking root cert of SAK"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    throw v1

    .line 125
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_4
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "sakUID is empty"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
