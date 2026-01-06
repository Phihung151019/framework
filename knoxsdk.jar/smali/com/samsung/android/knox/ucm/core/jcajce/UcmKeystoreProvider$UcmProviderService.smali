.class final Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;
.super Ljava/security/Provider$Service;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UcmProviderService"
.end annotation


# instance fields
.field public greylist mSrc:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p5}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->toList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    iput-object p6, v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    return-void
.end method

.method public static greylist toList([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyStore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystore;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystore;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "KeyPairGenerator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, "SecureRandom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmSecureRandom;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmSecureRandom;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "KeyGenerator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "Unknown type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
