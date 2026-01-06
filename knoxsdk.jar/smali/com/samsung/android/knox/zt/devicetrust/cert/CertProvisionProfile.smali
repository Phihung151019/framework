.class public Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    }
.end annotation


# static fields
.field public static final greylist CA_DEFAULT:Ljava/lang/String; = "default"

.field public static final greylist CA_LOOPBACK:Ljava/lang/String; = "loopback"

.field public static final greylist CLIENT_ID_TYPE_IMEI:I = 0x0

.field public static final greylist CLIENT_ID_TYPE_SAK_UID:I = 0x1

.field public static final greylist KEY_OWNER_APP:I = 0x1

.field public static final greylist KEY_OWNER_SYSTEM:I = 0x0

.field public static final greylist KEY_PURPOSE_ENCRYPT:I = 0x1

.field public static final greylist KEY_PURPOSE_SIGN:I = 0x4

.field public static final greylist KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field public static final greylist KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field public static final greylist PROTOCOL_ACME:Ljava/lang/String; = "acme"

.field public static final greylist PROTOCOL_SCEP:Ljava/lang/String; = "scep"

.field public static final greylist PROVIDER_ANDROID:Ljava/lang/String; = "AndroidKeyStore"

.field public static final greylist PROVIDER_UCM:Ljava/lang/String; = "UcmKeystore"

.field public static final greylist SAN_DNS_NAME:Ljava/lang/String; = "dNSName"

.field public static final greylist SAN_IP_ADDRESS:Ljava/lang/String; = "iPAddress"

.field public static final greylist SAN_RFC822_NAME:Ljava/lang/String; = "rfc822Name"

.field public static final greylist SAN_URI:Ljava/lang/String; = "uniformResourceIdentifier"

.field public static final greylist TYPE_PROVISION:Ljava/lang/String; = "provision"

.field public static final greylist TYPE_RENEW:Ljava/lang/String; = "renew"

.field public static final greylist TYPE_REVOKE:Ljava/lang/String; = "revoke"


# instance fields
.field public final greylist mChallengePassword:Ljava/lang/String;

.field public final greylist mClientIdentifierType:I

.field public final greylist mClientIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist mKeyAlias:Ljava/lang/String;

.field public final greylist mKeyExtendedPurposes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist mKeyOwner:I

.field public final greylist mKeyProvider:Ljava/lang/String;

.field public final greylist mProtocol:Ljava/lang/String;

.field public final greylist mProvisionType:Ljava/lang/String;

.field public final greylist mRootCA:Ljava/lang/String;

.field public final greylist mServerHost:Ljava/lang/String;

.field public final greylist mServerPath:Ljava/lang/String;

.field public final greylist mServerPort:Ljava/lang/String;

.field public final greylist mSubject:Landroid/os/Bundle;

.field public final greylist mSubjectAltName:Landroid/os/Bundle;

.field public final greylist mSystemKeyPurposes:I

.field public final greylist mSystemKeySize:I

.field public final greylist mSystemKeyType:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p11

    move/from16 v2, p14

    move-object/from16 v3, p16

    move/from16 v4, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedRootCAs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mRootCA:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedProtocols()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iput-object p2, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProtocol:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedProvisionTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iput-object p3, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProvisionType:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedKeyProviders()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->convertKeyProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iput-object p4, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyProvider:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedKeyOwners()Ljava/util/List;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iput p5, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyOwner:I

    iput-object p6, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {p7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string p3, "\'s value must be passed as type String or StringArrayList"

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p7, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->validateStringOrStringArrayList(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "subject "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p7, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubject:Landroid/os/Bundle;

    move-object p1, p8

    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerHost:Ljava/lang/String;

    move-object p1, p9

    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPort:Ljava/lang/String;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPath:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedSubjectAltName()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->validateStringOrStringArrayList(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "subject alternative name "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "invalid subject alternative name property : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iput-object v1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubjectAltName:Landroid/os/Bundle;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyExtendedPurposes:Ljava/util/List;

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mChallengePassword:Ljava/lang/String;

    const/4 p1, -0x1

    if-eq v2, p1, :cond_6

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedClientIdentifierTypes()Ljava/util/List;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid client identifier type : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    iput v2, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifierType:I

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifiers:Ljava/util/List;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedSystemKeyTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string p1, "invalid system key type : "

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    iput-object v3, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyType:Ljava/lang/String;

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedSystemKeyPurposes()Ljava/util/List;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid system key purposes : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    iput v4, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyPurposes:I

    move/from16 p1, p18

    iput p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeySize:I

    return-void

    :cond_b
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid key owner : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid key provider : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid provision type : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "invalid protocol : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Lcom/samsung/android/knox/zt/KnoxZtException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "invalid root ca : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist getSupportedClientIdentifierTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSupportedKeyOwners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSupportedKeyProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    const-string v1, "UcmKeystore"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSupportedProtocols()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "acme"

    const-string v1, "scep"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSupportedProvisionTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "renew"

    const-string v1, "revoke"

    const-string v2, "provision"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSupportedRootCAs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "default"

    const-string v1, "loopback"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSupportedSubjectAltName()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "rfc822Name"

    const-string v1, "uniformResourceIdentifier"

    const-string v2, "dNSName"

    const-string v3, "iPAddress"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSupportedSystemKeyPurposes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getSupportedSystemKeyTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "RSA"

    const-string v1, "EC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final greylist convertKeyProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "AndroidKeyStore"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "^([a-zA-Z_]\\w*)+([.][a-zA-Z_]\\w*)+:(.)*$"

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "UcmKeystore"

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public greylist getChallengePassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mChallengePassword:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getClientIdentifierType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifierType:I

    return p0
.end method

.method public greylist getClientIdentifiers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifiers:Ljava/util/List;

    return-object p0
.end method

.method public greylist getKeyAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyAlias:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getKeyExtendedPurposes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyExtendedPurposes:Ljava/util/List;

    return-object p0
.end method

.method public greylist getKeyOwner()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyOwner:I

    return p0
.end method

.method public greylist getKeyProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyProvider:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getProvisionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProvisionType:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getRootCA()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mRootCA:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getServerHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerHost:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getServerPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPath:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getServerPort()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPort:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getSubject()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubject:Landroid/os/Bundle;

    return-object p0
.end method

.method public greylist getSubjectAltName()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubjectAltName:Landroid/os/Bundle;

    return-object p0
.end method

.method public greylist getSystemKeyPurposes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyPurposes:I

    return p0
.end method

.method public greylist getSystemKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeySize:I

    return p0
.end method

.method public greylist getSystemKeyType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyType:Ljava/lang/String;

    return-object p0
.end method

.method public final greylist validateStringOrStringArrayList(Ljava/lang/Object;)Z
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, p0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    return p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method
