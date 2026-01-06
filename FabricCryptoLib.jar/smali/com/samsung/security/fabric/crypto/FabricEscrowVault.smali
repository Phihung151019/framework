.class public Lcom/samsung/security/fabric/crypto/FabricEscrowVault;
.super Ljava/lang/Object;
.source "FabricEscrowVault.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;,
        Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;,
        Lcom/samsung/security/fabric/crypto/FabricEscrowVault$checkedRemoteRequest;
    }
.end annotation


# static fields
.field public static final EV_ALGORITHM_HSM_SIGN_CERT:Ljava/lang/String; = "SHA512withECDSA"

.field public static final EV_ALGORITHM_TA_SIGN_CERT:Ljava/lang/String; = "SHA384withECDSA"

.field public static final EV_ALIAS_CEK:Ljava/lang/String; = "ev2_cek"

.field public static final EV_ALIAS_HSM_SIGN_CERT:Ljava/lang/String; = "ev2_HSMSignCert"

.field public static final EV_ALIAS_RK:Ljava/lang/String; = "ev2_rk"

.field public static final EV_ALIAS_RSA:Ljava/lang/String; = "ev2_rsa"

.field public static final EV_ALIAS_TA_SIGN_CERT:Ljava/lang/String; = "ev2_TaSignCert"

.field public static final EV_CURVE_NAME_HSM_SIGN_CERT:Ljava/lang/String; = "secp521r1"

.field public static final EV_CURVE_NAME_TA_SIGN_CERT:Ljava/lang/String; = "secp384r1"

.field public static final EV_DEFAULT_ALGORITHM_EC:Ljava/lang/String; = "EC"

.field public static final EV_DEFAULT_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final EV_KDF_UNWRAP:I = 0x0

.field public static final EV_KDF_WRAP:I = 0x1

.field public static final EV_LENGTH_S:I = 0x20

.field public static final EV_LENGTH_T:I = 0x1

.field public static final EV_LENGTH_W:I = 0x20

.field public static final EV_TYPE_IMPORT_CRED:I = 0x3

.field public static final EV_TYPE_RECOVERY_KEY:I = 0x2

.field public static final EV_TYPE_REGISTER_KEY:I = 0x1

.field public static final KM_DIGEST_SHA1:I = 0x2

.field public static final KM_DIGEST_SHA256:I = 0x4

.field public static final KM_DIGEST_SHA384:I = 0x5

.field public static final KM_DIGEST_SHA512:I = 0x6

.field public static final SAMSUNG_ATTESTATION_SERVICE:Ljava/lang/String; = "android.security.samsungattestation"

.field public static final SAMSUNG_ATTESTESTATION_ROOT:Ljava/lang/String; = "samsung"

.field public static final TAG:Ljava/lang/String; = "FK-FabricEscrowVault"

.field public static final TAG_DIGEST:I = 0x20000005

.field public static final TAG_MGF_DIGEST:I = 0x200000cb

.field public static mFabricEscrowVault:Lcom/samsung/security/fabric/crypto/FabricEscrowVault;


# instance fields
.field public mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

.field public mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

.field public mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

.field public mKeyStore:Landroid/security/KeyStore2;

.field public mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mKeyStore:Landroid/security/KeyStore2;

    .line 88
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 91
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    .line 107
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    .line 108
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    .line 111
    const-string v0, "FK-FabricEscrowVault"

    const-string v1, "private FabricEscrowVault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mKeyStore:Landroid/security/KeyStore2;

    .line 113
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getInstance()Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    .line 114
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    .line 115
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FabricEscrowVault Exception - Invaild Crypto Instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mKeyStore:Landroid/security/KeyStore2;

    .line 88
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 91
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    .line 107
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    .line 108
    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    .line 123
    const-string v0, "FK-FabricEscrowVault"

    const-string v1, "public FabricEscrowVault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mKeyStore:Landroid/security/KeyStore2;

    .line 125
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->getInstance()Lcom/samsung/security/fabric/crypto/FabricCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    .line 126
    invoke-static {}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getInstance()Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 135
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Test Exception - Todo removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FabricEscrowVault Exception - Invaild Crypto"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private evAttestKey([BLjava/lang/String;)Ljava/lang/Iterable;
    .locals 8
    .param p1, "challenge"    # [B
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v1, -0x6ffffd3c

    invoke-static {v1, p1}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    const-string v1, "samsung"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const v2, -0x6ffff7ca

    invoke-static {v2, v1}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    const v1, 0x700008fe

    invoke-static {v1}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v1, "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :try_start_0
    invoke-static {p2}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    .line 917
    .local v2, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    new-instance v3, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$$ExternalSyntheticLambda0;-><init>(Landroid/system/keystore2/KeyDescriptor;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->handleRemoteExceptionSamsungAttestation(Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/keymint/Certificate;

    .line 919
    .local v3, "result":[Landroid/hardware/security/keymint/Certificate;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 920
    .local v6, "c":Landroid/hardware/security/keymint/Certificate;
    iget-object v7, v6, Landroid/hardware/security/keymint/Certificate;->encodedCertificate:[B

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    nop

    .end local v6    # "c":Landroid/hardware/security/keymint/Certificate;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 924
    .end local v2    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "result":[Landroid/hardware/security/keymint/Certificate;
    :cond_0
    nop

    .line 925
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 929
    return-object v1

    .line 926
    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attestation certificate chain contained "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 927
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries. At least three are required."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 922
    :catch_0
    move-exception v2

    .line 923
    .local v2, "e":Landroid/security/KeyStoreException;
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "Failed to generate  certificate chain : "

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private evGenerateECKeyPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ecCurve"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 934
    :try_start_0
    const-string v0, "EC"

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 935
    .local v0, "kpg":Ljava/security/KeyPairGenerator;
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v2, 0xc

    invoke-direct {v1, p2, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v2, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "SHA-384"

    const-string v3, "SHA-512"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 939
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 940
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    nop

    .line 946
    .end local v0    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "FK-FabricEscrowVault"

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Error"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private evStoreCertificateChain(Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 8
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 950
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    if-eqz p1, :cond_3

    .line 953
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 954
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "FK-FabricEscrowVault"

    if-nez v1, :cond_0

    .line 955
    const-string v1, "there is no cert chain byte"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void

    .line 958
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 959
    .local v1, "userCert":[B
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 960
    const-string v3, "there is no ca cert"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void

    .line 963
    :cond_1
    const/4 v3, 0x0

    .line 964
    .local v3, "caCert":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 965
    .local v4, "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 966
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [B

    .line 967
    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 970
    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/samsung/security/fabric/crypto/FabricAttestationParameterUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v5

    .line 971
    .local v5, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v6, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v5, v1, v7}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    .end local v5    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    nop

    .line 977
    return-void

    .line 972
    :catch_0
    move-exception v5

    .line 973
    .local v5, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v5}, Landroid/security/KeyStoreException;->printStackTrace()V

    .line 974
    invoke-virtual {v5}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-virtual {v5}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 951
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    .end local v1    # "userCert":[B
    .end local v3    # "caCert":[B
    .end local v4    # "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "e":Landroid/security/KeyStoreException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/samsung/security/fabric/crypto/FabricEscrowVault;
    .locals 3

    .line 155
    sget-object v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFabricEscrowVault:Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    if-nez v0, :cond_1

    .line 156
    const-class v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFabricEscrowVault:Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    if-nez v1, :cond_0

    .line 158
    const-string v1, "FK-FabricEscrowVault"

    const-string v2, "getInstance() - new instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    invoke-direct {v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;-><init>()V

    sput-object v1, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFabricEscrowVault:Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    .line 161
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 163
    :cond_1
    :goto_0
    const-string v0, "FK-FabricEscrowVault"

    const-string v1, "getInstance() - end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFabricEscrowVault:Lcom/samsung/security/fabric/crypto/FabricEscrowVault;

    return-object v0
.end method

.method private declared-synchronized getSamsungAttestationService()Landroid/security/samsungattestation/ISamsungAttestation;
    .locals 1

    monitor-enter p0

    .line 901
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    if-nez v0, :cond_0

    .line 902
    const-string v0, "android.security.samsungattestation"

    .line 903
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 902
    invoke-static {v0}, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/samsungattestation/ISamsungAttestation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 905
    .end local p0    # "this":Lcom/samsung/security/fabric/crypto/FabricEscrowVault;
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 900
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleRemoteExceptionSamsungAttestation(Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 888
    .local p1, "request":Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;, "Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest<TR;>;"
    const-string v0, "FK-FabricEscrowVault"

    invoke-direct {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->getSamsungAttestationService()Landroid/security/samsungattestation/ISamsungAttestation;

    move-result-object v1

    .line 890
    .local v1, "service":Landroid/security/samsungattestation/ISamsungAttestation;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/samsung/security/fabric/crypto/FabricAttestation$checkedRemoteRequest;->execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 894
    :catch_0
    move-exception v2

    .line 895
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Cannot connect to Fabric Crypto daemon."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    new-instance v0, Landroid/security/KeyStoreException;

    const/4 v3, -0x4

    const-string v4, "Cannot connect to Fabric Crypto daemon"

    invoke-direct {v0, v3, v4}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 891
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 892
    .local v2, "e":Landroid/os/ServiceSpecificException;
    const-string v3, "Fabric Crypto Attestation exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    new-instance v0, Landroid/security/KeyStoreException;

    iget v4, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v4, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$evAttestKey$0(Landroid/system/keystore2/KeyDescriptor;Ljava/util/List;Landroid/security/samsungattestation/ISamsungAttestation;)[Landroid/hardware/security/keymint/Certificate;
    .locals 1
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "args"    # Ljava/util/List;
    .param p2, "service"    # Landroid/security/samsungattestation/ISamsungAttestation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p2, p0, v0}, Landroid/security/samsungattestation/ISamsungAttestation;->attestKey(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object v0

    return-object v0
.end method

.method private updateErrMsg(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1023
    const-string v0, "FK-FabricEscrowVault"

    if-nez p1, :cond_0

    .line 1024
    const-string v1, "updateErrMsg : exception is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-void

    .line 1027
    :cond_0
    const-string v1, "exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1030
    return-void
.end method


# virtual methods
.method public evDelete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    nop

    .line 728
    const/4 v0, 0x1

    return v0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 725
    const/4 v1, 0x0

    return v1
.end method

.method public evDeleteKey()Z
    .locals 4

    .line 274
    const-string v0, "ev2_cek"

    const-string v1, "ev2_rk"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    invoke-virtual {v3, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    invoke-virtual {v3, v1}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->deleteKey(Ljava/lang/String;)V

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    invoke-virtual {v1, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    invoke-virtual {v1, v0}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_1
    nop

    .line 280
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKey()Z

    move-result v0

    const-string v1, "FK-FabricEscrowVault"

    if-nez v0, :cond_2

    .line 281
    const-string v0, "evDeleteKey() - Deleted!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_2
    const-string v0, "evDeleteKey() - Fail!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 278
    return v2
.end method

.method public evDeleteKeyPair()Z
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKeypair()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FK-FabricEscrowVault"

    if-nez v0, :cond_0

    .line 290
    const-string v0, "evDeleteKeyPair() - There are no skTA/pkTA"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v1

    .line 294
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    const-string v3, "ev2_rsa"

    invoke-virtual {v0, v3}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    nop

    .line 299
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKeypair()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    const-string v0, "evDeleteKeyPair() - Deleted!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_1
    const-string v0, "evDeleteKeyPair() - Fail!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 297
    return v1
.end method

.method public evExportCred(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "credAlias"    # Ljava/lang/String;
    .param p2, "wrappingKeyAlias"    # Ljava/lang/String;

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->exportPrivkeyData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 714
    const/4 v1, 0x0

    return-object v1
.end method

.method public evExportCred(Ljava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Collection;)[B
    .locals 4
    .param p1, "credAlias"    # Ljava/lang/String;
    .param p2, "certChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Lcom/samsung/security/fabric/cryptod/KeyParameter;",
            ">;)[B"
        }
    .end annotation

    .line 691
    .local p3, "params":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evVerifyCert([Ljava/security/cert/Certificate;I)Z

    move-result v2
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "FK-FabricEscrowVault"

    if-nez v2, :cond_0

    .line 692
    :try_start_1
    const-string v0, "evExportCred - invalid SAK Cert"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-object v1

    .line 695
    :cond_0
    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evExtractPublicKey(Ljava/security/cert/Certificate;)Ljava/security/PublicKey;

    move-result-object v0

    .line 696
    .local v0, "pk":Ljava/security/PublicKey;
    if-nez v0, :cond_1

    .line 697
    const-string v2, "evExportCred - fail to get pubkey from SAK Cert"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-object v1

    .line 701
    :cond_1
    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->exportPubkeyData(Ljava/lang/String;[BLjava/util/Collection;)[B

    move-result-object v1
    :try_end_1
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 702
    .end local v0    # "pk":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 704
    return-object v1
.end method

.method public evExtractPublicKey(Ljava/security/cert/Certificate;)Ljava/security/PublicKey;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 834
    const-string v0, "FK-FabricEscrowVault"

    const-string v1, "Get Public Key from SAKCert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public evGenerateKey()Z
    .locals 5

    .line 309
    const-string v0, "AES"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->getInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;

    move-result-object v2

    .line 311
    .local v2, "fkgRk":Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
    const-string v3, "ev2_rk"

    invoke-virtual {v2, v3}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v2}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->generateKey()Z

    .line 314
    invoke-static {v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->getInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;

    move-result-object v0

    .line 316
    .local v0, "fkgCek":Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
    const-string v3, "ev2_cek"

    invoke-virtual {v0, v3}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->generateKey()Z

    .line 319
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKey()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    const-string v3, "FK-FabricEscrowVault"

    const-string v4, "evGenerateKey Fail to generate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    return v1

    .line 326
    .end local v0    # "fkgCek":Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
    .end local v2    # "fkgRk":Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
    :cond_0
    nop

    .line 327
    const/4 v0, 0x1

    return v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 325
    return v1
.end method

.method public evGenerateKeyPair()Z
    .locals 4

    .line 332
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->getInstance(Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;

    move-result-object v1

    .line 334
    .local v1, "fkgRsa":Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
    const-string v2, "ev2_rsa"

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->initialize(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;->generateKey()Z

    .line 337
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKeypair()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    const-string v2, "FK-FabricEscrowVault"

    const-string v3, "evGenerateKeyPair Fail to generate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    return v0

    .line 345
    .end local v1    # "fkgRsa":Lcom/samsung/security/fabric/crypto/FabricKeyGenerator;
    :cond_0
    nop

    .line 346
    const/4 v0, 0x1

    return v0

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 344
    return v0
.end method

.method public evGenerateVsw([B)Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
    .locals 7
    .param p1, "verifierTypeVsw"    # [B

    .line 382
    move-object v0, p1

    .line 385
    .local v0, "msg":[B
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyDerivation([BI)[B

    move-result-object v2

    .line 386
    .local v2, "eVSW":[B
    iget-object v3, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyDerivation([BI)[B

    move-result-object v3

    .line 388
    .local v3, "dVSW":[B
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "FK-FabricEscrowVault"

    if-nez v4, :cond_0

    .line 389
    :try_start_1
    const-string v4, "evGenerateVsw - KDF fail"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v1

    .line 393
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evSignData([B)[B

    move-result-object v4

    .line 394
    .local v4, "signEvsw":[B
    if-nez v4, :cond_1

    .line 395
    const-string v6, "evGenerateVsw - evSign fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v1

    .line 399
    :cond_1
    new-instance v5, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;

    invoke-direct {v5, p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;-><init>(Lcom/samsung/security/fabric/crypto/FabricEscrowVault;)V

    .line 400
    .local v5, "ret":Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
    iput-object v2, v5, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->eVSW:[B

    .line 401
    iput-object v4, v5, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->signEvsw:[B
    :try_end_1
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    return-object v5

    .line 403
    .end local v2    # "eVSW":[B
    .end local v3    # "dVSW":[B
    .end local v4    # "signEvsw":[B
    .end local v5    # "ret":Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v2}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 405
    return-object v1
.end method

.method public evGetChallenge()[B
    .locals 3

    .line 170
    invoke-static {}, Lcom/samsung/security/fabric/crypto/Utils;->getChallenge()[B

    move-result-object v0

    .line 171
    .local v0, "ch":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evGetChallenge()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/security/fabric/crypto/Utils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FK-FabricEscrowVault"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-object v0
.end method

.method public evGetEvS([B[B)[B
    .locals 5
    .param p1, "v"    # [B
    .param p2, "s"    # [B

    .line 474
    invoke-static {p1, p2}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v0

    .line 476
    .local v0, "vs":[B
    const-string v1, "GCM"

    const-string v2, "NoPadding"

    const-string v3, "AES"

    invoke-static {v3, v1, v2}, Lcom/samsung/security/fabric/crypto/FabricCipher;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricCipher;

    move-result-object v1

    .line 481
    .local v1, "cipher":Lcom/samsung/security/fabric/crypto/FabricCipher;
    :try_start_0
    const-string v2, "ev2_rk"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/security/fabric/crypto/FabricCipher;->init(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {v1}, Lcom/samsung/security/fabric/crypto/FabricCipher;->getIv()[B

    move-result-object v2

    .line 483
    .local v2, "eVSIv":[B
    invoke-virtual {v1, v0}, Lcom/samsung/security/fabric/crypto/FabricCipher;->doFinal([B)[B

    move-result-object v3

    .line 484
    .local v3, "eVS":[B
    invoke-static {v2, v3}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v4
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v3    # "eVS":[B
    .local v4, "eVS":[B
    return-object v4

    .line 486
    .end local v2    # "eVSIv":[B
    .end local v4    # "eVS":[B
    :catch_0
    move-exception v2

    .line 487
    .local v2, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v2}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 488
    const/4 v3, 0x0

    return-object v3
.end method

.method public evGetHSMCert(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/lang/String;

    .line 770
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGenerateECKeyPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "challenge"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evAttestKey([BLjava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    .line 773
    .local v0, "certificates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-direct {p0, v0, p1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evStoreCertificateChain(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 774
    invoke-static {v0}, Lcom/samsung/security/fabric/crypto/Utils;->convert(Ljava/lang/Iterable;)[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 777
    .local v1, "certArray":[Ljava/security/cert/Certificate;
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 778
    .local v2, "keystore":Ljava/security/KeyStore;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 779
    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    .line 782
    .local v3, "privateKey":Ljava/security/PrivateKey;
    new-instance v4, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    invoke-direct {v4, p0, v3, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;-><init>(Lcom/samsung/security/fabric/crypto/FabricEscrowVault;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 784
    .end local v0    # "certificates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v1    # "certArray":[Ljava/security/cert/Certificate;
    .end local v2    # "keystore":Ljava/security/KeyStore;
    .end local v3    # "privateKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FK-FabricEscrowVault"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 788
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public evGetPubkey([Ljava/security/cert/Certificate;I)Ljava/security/PublicKey;
    .locals 4
    .param p1, "certChain"    # [Ljava/security/cert/Certificate;
    .param p2, "type"    # I

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evVerifyCert([Ljava/security/cert/Certificate;I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FK-FabricEscrowVault"

    if-nez v0, :cond_0

    .line 413
    const-string v0, "evGetPubkey - invalid Cert chain"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object v1

    .line 417
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evExtractPublicKey(Ljava/security/cert/Certificate;)Ljava/security/PublicKey;

    move-result-object v0

    .line 418
    .local v0, "pk":Ljava/security/PublicKey;
    if-nez v0, :cond_1

    .line 419
    const-string v3, "Fail to get pkHSM"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v1

    .line 423
    :cond_1
    return-object v0
.end method

.method public evGetSAKCert()Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;
    .locals 6

    .line 734
    const-string v0, "FK-FabricEscrowVault"

    const-string v1, "ev2_TaSignCert"

    :try_start_0
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 735
    .local v2, "keystore":Ljava/security/KeyStore;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 737
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 738
    const-string v4, "Generate new TA_SIGN_CERT"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v4, "secp384r1"

    invoke-direct {p0, v4, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGenerateECKeyPair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_0
    const-string v4, "Already exist TA_SIGN_CERT"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :goto_0
    const-string v4, "challenge"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 747
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evAttestKey([BLjava/lang/String;)Ljava/lang/Iterable;

    move-result-object v4

    .line 748
    .local v4, "certificates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-direct {p0, v4, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evStoreCertificateChain(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 749
    invoke-static {v4}, Lcom/samsung/security/fabric/crypto/Utils;->convert(Ljava/lang/Iterable;)[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 752
    .local v5, "certArray":[Ljava/security/cert/Certificate;
    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    .line 755
    .local v1, "privateKey":Ljava/security/PrivateKey;
    new-instance v3, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    invoke-direct {v3, p0, v1, v5}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;-><init>(Lcom/samsung/security/fabric/crypto/FabricEscrowVault;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 757
    .end local v1    # "privateKey":Ljava/security/PrivateKey;
    .end local v2    # "keystore":Ljava/security/KeyStore;
    .end local v4    # "certificates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v5    # "certArray":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-direct {p0, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 761
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public evGetSignCert()[Ljava/security/cert/Certificate;
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    const/4 v1, 0x0

    const-string v2, "FK-FabricEscrowVault"

    if-nez v0, :cond_0

    .line 177
    const-string v0, "evGetTaSignCert() - Fail(No SAK Keypair)"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-object v1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 182
    .local v0, "cert":[Ljava/security/cert/Certificate;
    if-nez v0, :cond_1

    .line 183
    const-string v3, "evGetTaSignCert() - Fail to get cert"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v1

    .line 187
    :cond_1
    return-object v0
.end method

.method public evGetTaEncPubKey()Ljava/security/PublicKey;
    .locals 4

    .line 221
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKeypair()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 222
    const-string v0, "FK-FabricEscrowVault"

    const-string v2, "evGetTaEncPubKey() - Not Exist Keypair"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v1

    .line 226
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    const-string v2, "ev2_rsa"

    invoke-virtual {v0, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->getPublicKey(Ljava/lang/String;)[B

    move-result-object v0

    .line 227
    .local v0, "pubKey":[B
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 228
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-object v1

    .line 229
    .end local v0    # "pubKey":[B
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 231
    return-object v1
.end method

.method public evGetTaEncPubKeySig()[B
    .locals 4

    .line 236
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evIsExistKeypair()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FK-FabricEscrowVault"

    if-nez v0, :cond_0

    .line 237
    const-string v0, "evGetTaEncPubKeySig() - Not Exist Keypair"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-object v1

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetTaEncPubKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evSignData([B)[B

    move-result-object v0

    .line 241
    .local v0, "Sign":[B
    if-nez v0, :cond_1

    .line 242
    const-string v3, "Fail to verify sign of the pubkey"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v1

    .line 246
    :cond_1
    return-object v0
.end method

.method public evGetTaSignPrivKeyHandle()Ljava/security/PrivateKey;
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    const/4 v1, 0x0

    const-string v2, "FK-FabricEscrowVault"

    if-nez v0, :cond_0

    .line 192
    const-string v0, "evGetTaSignPrivKeyHandle() - Fail(No SAK Keypair)"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-object v1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 197
    .local v0, "key":Ljava/security/PrivateKey;
    if-nez v0, :cond_1

    .line 198
    const-string v3, "evGetTaSignPrivKeyHandle() - Fail to get PrivKey Handle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v1

    .line 202
    :cond_1
    return-object v0
.end method

.method public evGetTaSignPubkey()Ljava/security/PublicKey;
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    const/4 v1, 0x0

    const-string v2, "FK-FabricEscrowVault"

    if-nez v0, :cond_0

    .line 207
    const-string v0, "evGetTaSignPubkey() - Fail(No SAK Keypair"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-object v1

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetSignCert()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evExtractPublicKey(Ljava/security/cert/Certificate;)Ljava/security/PublicKey;

    move-result-object v0

    .line 212
    .local v0, "pk":Ljava/security/PublicKey;
    if-nez v0, :cond_1

    .line 213
    const-string v3, "evGetTaSignPubkey() - Fail to get pubkey"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-object v1

    .line 217
    :cond_1
    return-object v0
.end method

.method public evImportCred([BLjava/lang/String;[B[B[Ljava/security/cert/Certificate;)Z
    .locals 9
    .param p1, "prefix"    # [B
    .param p2, "credAlias"    # Ljava/lang/String;
    .param p3, "soCred"    # [B
    .param p4, "soCredSig"    # [B
    .param p5, "certChain"    # [Ljava/security/cert/Certificate;

    .line 670
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 671
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    const v0, 0x10000002

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    new-array v7, v1, [B

    .line 674
    .local v7, "aad":[B
    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    const-string v5, "ev2_rsa"
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p2

    move-object v4, p3

    .end local p2    # "credAlias":Ljava/lang/String;
    .end local p3    # "soCred":[B
    .local v3, "credAlias":Ljava/lang/String;
    .local v4, "soCred":[B
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->importData(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Collection;[B)I

    move-result p2

    .line 675
    .local p2, "ret":I
    if-nez p2, :cond_0

    .line 676
    return v8

    .line 679
    :cond_0
    const-string p3, "FK-FabricEscrowVault"

    const-string v0, "evImportCred - importData fail"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 680
    return v1

    .line 682
    .end local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    .end local v7    # "aad":[B
    .end local p2    # "ret":I
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v3    # "credAlias":Ljava/lang/String;
    .end local v4    # "soCred":[B
    .local p2, "credAlias":Ljava/lang/String;
    .restart local p3    # "soCred":[B
    :catch_1
    move-exception v0

    move-object v3, p2

    move-object v4, p3

    move-object p2, v0

    .line 683
    .end local p3    # "soCred":[B
    .restart local v3    # "credAlias":Ljava/lang/String;
    .restart local v4    # "soCred":[B
    .local p2, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 684
    return v1
.end method

.method public evInit()Z
    .locals 3

    .line 138
    const-string v0, "evInit() - start"

    const-string v1, "FK-FabricEscrowVault"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetSAKCert()Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    .line 140
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mEvEcTaSignSakKeypair:Lcom/samsung/security/fabric/crypto/FabricEscrowVault$KeyCertificatePair;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "evInit Fail to get evGetSAKCert"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v2

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGenerateKeyPair()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    const-string v0, "evInit Fail to generate evGenerateKeyPair()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v2

    .line 150
    :cond_1
    const-string v0, "evInit() - end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public evIsExistKey()Z
    .locals 3

    .line 251
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    const-string v2, "ev2_rk"

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    const-string v2, "ev2_cek"

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    .line 256
    :cond_1
    nop

    .line 258
    const/4 v0, 0x1

    return v0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 255
    return v0
.end method

.method public evIsExistKeypair()Z
    .locals 3

    .line 263
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFcm:Lcom/samsung/security/fabric/crypto/FabricKeyManager;

    const-string v2, "ev2_rsa"

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/crypto/FabricKeyManager;->existKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    .line 267
    :cond_0
    nop

    .line 269
    const/4 v0, 0x1

    return v0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 266
    return v0
.end method

.method public evRecoveryCred(Ljava/lang/String;[B[B[B[B[B[Ljava/security/cert/Certificate;)Z
    .locals 14
    .param p1, "credAlias"    # Ljava/lang/String;
    .param p2, "kid"    # [B
    .param p3, "challenge"    # [B
    .param p4, "did"    # [B
    .param p5, "eCred"    # [B
    .param p6, "signEcred"    # [B
    .param p7, "hsmSignCredCert"    # [Ljava/security/cert/Certificate;

    .line 580
    invoke-static/range {p2 .. p3}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v0

    .line 581
    .local v0, "msg":[B
    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v0

    .line 582
    move-object/from16 v4, p5

    invoke-static {v0, v4}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v8

    .line 585
    .end local v0    # "msg":[B
    .local v8, "msg":[B
    const/4 v9, 0x0

    move-object/from16 v10, p7

    :try_start_0
    invoke-virtual {p0, v10, v9}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetPubkey([Ljava/security/cert/Certificate;I)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v11, v0

    .line 586
    .local v11, "pkSignHSM":Ljava/security/PublicKey;
    const-string v0, "FK-FabricEscrowVault"

    if-nez v11, :cond_0

    .line 587
    :try_start_1
    const-string v2, "evRecoveryCred: Fail to get pkSignHSM"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_1 .. :try_end_1} :catch_4

    .line 588
    return v9

    .line 591
    :cond_0
    const/4 v2, 0x0

    .line 593
    .local v2, "ret":Z
    :try_start_2
    const-string v3, "SHA512withECDSA"
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v12, p6

    :try_start_3
    invoke-virtual {p0, v11, v8, v12, v3}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evVerify(Ljava/security/PublicKey;[B[BLjava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_3 .. :try_end_3} :catch_1

    move v13, v3

    .line 594
    .end local v2    # "ret":Z
    .local v13, "ret":Z
    if-nez v13, :cond_1

    .line 595
    :try_start_4
    const-string v2, "evRecoveryCred Fail to evVerify signEcred"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_4 .. :try_end_4} :catch_1

    .line 596
    return v9

    .line 598
    :catch_0
    move-exception v0

    move v2, v13

    goto :goto_0

    .line 601
    :cond_1
    nop

    .line 603
    :try_start_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    const v2, 0x10000002

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;->makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    new-array v7, v9, [B

    .line 607
    .local v7, "aad":[B
    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    const-string v5, "ev2_cek"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->importData(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Collection;[B)I

    move-result v2

    .line 608
    .local v2, "result":I
    if-nez v2, :cond_2

    .line 609
    const/4 v0, 0x1

    return v0

    .line 612
    :cond_2
    const-string v3, "evRecoveryCred - importData fail"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return v9

    .line 615
    .end local v2    # "result":I
    .end local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/security/fabric/cryptod/KeyParameter;>;"
    .end local v7    # "aad":[B
    .end local v11    # "pkSignHSM":Ljava/security/PublicKey;
    .end local v13    # "ret":Z
    :catch_1
    move-exception v0

    goto :goto_1

    .line 598
    .local v2, "ret":Z
    .restart local v11    # "pkSignHSM":Ljava/security/PublicKey;
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v12, p6

    .line 599
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V
    :try_end_5
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_5 .. :try_end_5} :catch_1

    .line 600
    return v9

    .line 615
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v2    # "ret":Z
    .end local v11    # "pkSignHSM":Ljava/security/PublicKey;
    :catch_4
    move-exception v0

    move-object/from16 v12, p6

    .line 616
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 617
    return v9
.end method

.method public evRecoveryKey([B[B[B[B[B[Ljava/security/cert/Certificate;)Z
    .locals 13
    .param p1, "wk"    # [B
    .param p2, "eCeRk"    # [B
    .param p3, "signEceRk"    # [B
    .param p4, "challenge"    # [B
    .param p5, "did"    # [B
    .param p6, "hsmSignCredCert"    # [Ljava/security/cert/Certificate;

    .line 625
    invoke-static/range {p4 .. p5}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v0

    .line 626
    .local v0, "msg":[B
    move-object v6, p2

    invoke-static {v0, p2}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v7

    .line 629
    .end local v0    # "msg":[B
    .local v7, "msg":[B
    const/4 v8, 0x0

    move-object/from16 v9, p6

    :try_start_0
    invoke-virtual {p0, v9, v8}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetPubkey([Ljava/security/cert/Certificate;I)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v10, v0

    .line 630
    .local v10, "pkSignHSM":Ljava/security/PublicKey;
    const-string v0, "FK-FabricEscrowVault"

    if-nez v10, :cond_0

    .line 631
    :try_start_1
    const-string v1, "evRecoveryCred: Fail to get pkSignHSM"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_1 .. :try_end_1} :catch_4

    .line 632
    return v8

    .line 635
    :cond_0
    const/4 v1, 0x0

    .line 637
    .local v1, "ret":Z
    :try_start_2
    const-string v2, "SHA512withECDSA"
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v11, p3

    :try_start_3
    invoke-virtual {p0, v10, v7, v11, v2}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evVerify(Ljava/security/PublicKey;[B[BLjava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_3 .. :try_end_3} :catch_1

    move v12, v2

    .line 638
    .end local v1    # "ret":Z
    .local v12, "ret":Z
    if-nez v12, :cond_1

    .line 639
    :try_start_4
    const-string v1, "evRecoveryCred Fail to evVerify signEcred"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_4 .. :try_end_4} :catch_1

    .line 640
    return v8

    .line 642
    :catch_0
    move-exception v0

    move v1, v12

    goto :goto_0

    .line 645
    :cond_1
    nop

    .line 648
    :try_start_5
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    const-string v2, "ev2_rk"

    const-string v3, "ev2_cek"

    const-string v4, "ev2_rsa"

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyRecovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)I

    move-result v1

    .line 649
    .local v1, "result":I
    if-nez v1, :cond_2

    .line 650
    const/4 v0, 0x1

    return v0

    .line 653
    :cond_2
    const-string v2, "evRecoveryKey - keyRecovery fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return v8

    .line 657
    .end local v1    # "result":I
    .end local v10    # "pkSignHSM":Ljava/security/PublicKey;
    .end local v12    # "ret":Z
    :catch_1
    move-exception v0

    goto :goto_1

    .line 642
    .local v1, "ret":Z
    .restart local v10    # "pkSignHSM":Ljava/security/PublicKey;
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v11, p3

    .line 643
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V
    :try_end_5
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_5 .. :try_end_5} :catch_1

    .line 644
    return v8

    .line 657
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v1    # "ret":Z
    .end local v10    # "pkSignHSM":Ljava/security/PublicKey;
    :catch_4
    move-exception v0

    move-object/from16 v11, p3

    .line 658
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 659
    return v8
.end method

.method public evRegistGetSignEceRk([B[B[B[B[B[B)[B
    .locals 4
    .param p1, "kId"    # [B
    .param p2, "challenge"    # [B
    .param p3, "dId"    # [B
    .param p4, "verifierType"    # [B
    .param p5, "eCeRk"    # [B
    .param p6, "eVS"    # [B

    .line 456
    move-object v0, p1

    .line 457
    .local v0, "msg":[B
    invoke-static {v0, p2}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v0

    .line 458
    invoke-static {v0, p3}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v0

    .line 459
    invoke-static {v0, p4}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v0

    .line 460
    invoke-static {v0, p5}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v0

    .line 461
    invoke-static {v0, p6}, Lcom/samsung/security/fabric/crypto/Utils;->concat([B[B)[B

    move-result-object v0

    .line 463
    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evSignData([B)[B

    move-result-object v1

    .line 464
    .local v1, "signEceRk":[B
    if-nez v1, :cond_0

    .line 465
    const-string v2, "FK-FabricEscrowVault"

    const-string v3, "Fail to get signEceRk"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v2, 0x0

    return-object v2

    .line 469
    :cond_0
    return-object v1
.end method

.method public evRegistKey([B[B[B[B[B[B[B[Ljava/security/cert/Certificate;)Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
    .locals 15
    .param p1, "challenge"    # [B
    .param p2, "kId"    # [B
    .param p3, "dId"    # [B
    .param p4, "v"    # [B
    .param p5, "s"    # [B
    .param p6, "w"    # [B
    .param p7, "verifierType"    # [B
    .param p8, "hsmEncCredCert"    # [Ljava/security/cert/Certificate;

    .line 550
    const/4 v0, 0x0

    move-object/from16 v8, p8

    invoke-virtual {p0, v8, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetPubkey([Ljava/security/cert/Certificate;I)Ljava/security/PublicKey;

    move-result-object v9

    .line 551
    .local v9, "pkHSM":Ljava/security/PublicKey;
    const-string v0, "FK-FabricEscrowVault"

    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 552
    const-string v2, "evRegistKey: Fail to get pkHSM"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-object v10

    .line 557
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    const-string v3, "ev2_rk"

    const-string v4, "ev2_cek"

    invoke-interface {v9}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v11, p6

    :try_start_1
    invoke-virtual {v2, v3, v4, v11, v5}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyRegister(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v3
    :try_end_1
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 558
    .local v3, "eCeRk":[B
    move-object/from16 v12, p4

    move-object/from16 v13, p5

    :try_start_2
    invoke-virtual {p0, v12, v13}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetEvS([B[B)[B

    move-result-object v7

    .line 559
    .local v7, "eVS":[B
    if-nez v7, :cond_1

    .line 560
    return-object v10

    .line 563
    :cond_1
    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p7

    move-object v6, v3

    move-object/from16 v3, p1

    .end local v3    # "eCeRk":[B
    .local v6, "eCeRk":[B
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evRegistGetSignEceRk([B[B[B[B[B[B)[B

    move-result-object v14

    move-object v3, v6

    .end local v6    # "eCeRk":[B
    .restart local v3    # "eCeRk":[B
    move-object v5, v14

    .line 564
    .local v5, "signEceRk":[B
    if-nez v5, :cond_2

    .line 565
    const-string v1, "Fail to get signEceRk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-object v10

    .line 569
    :cond_2
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v4, v7

    .end local v7    # "eVS":[B
    .local v4, "eVS":[B
    invoke-direct/range {v0 .. v5}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;-><init>(Lcom/samsung/security/fabric/crypto/FabricEscrowVault;[B[B[B[B)V
    :try_end_2
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v4    # "eVS":[B
    .restart local v7    # "eVS":[B
    return-object v0

    .line 570
    .end local v3    # "eCeRk":[B
    .end local v5    # "signEceRk":[B
    .end local v7    # "eVS":[B
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v11, p6

    .line 571
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 572
    return-object v10
.end method

.method public evRegistKey([B[B[B[B[B[Ljava/security/cert/Certificate;)Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
    .locals 16
    .param p1, "challenge"    # [B
    .param p2, "kId"    # [B
    .param p3, "dId"    # [B
    .param p4, "eVSW"    # [B
    .param p5, "signEvsw"    # [B
    .param p6, "hsmEncCredCert"    # [Ljava/security/cert/Certificate;

    .line 496
    move-object/from16 v1, p0

    move-object/from16 v8, p4

    const/4 v0, 0x0

    move-object/from16 v9, p6

    invoke-virtual {v1, v9, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetPubkey([Ljava/security/cert/Certificate;I)Ljava/security/PublicKey;

    move-result-object v10

    .line 497
    .local v10, "pkHSM":Ljava/security/PublicKey;
    const-string v0, "FK-FabricEscrowVault"

    const/4 v11, 0x0

    if-nez v10, :cond_0

    .line 498
    const-string v2, "evRegistKey: Fail to get pkHSM"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-object v11

    .line 502
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetTaSignPubkey()Ljava/security/PublicKey;

    move-result-object v12

    .line 503
    .local v12, "pkSignTA":Ljava/security/PublicKey;
    if-nez v12, :cond_1

    .line 504
    const-string v2, "evRegistKey: Fail to get pkSignTA"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-object v11

    .line 508
    :cond_1
    const/4 v2, 0x0

    .line 510
    .local v2, "ret":Z
    :try_start_0
    const-string v3, "SHA384withECDSA"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v13, p5

    :try_start_1
    invoke-virtual {v1, v12, v8, v13, v3}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evVerify(Ljava/security/PublicKey;[B[BLjava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3

    move v14, v3

    .line 511
    .end local v2    # "ret":Z
    .local v14, "ret":Z
    if-nez v14, :cond_2

    .line 512
    :try_start_2
    const-string v2, "Fail to evVerify signEvsw"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0

    .line 513
    return-object v11

    .line 515
    :catch_0
    move-exception v0

    move v2, v14

    goto :goto_1

    .line 518
    :cond_2
    nop

    .line 520
    invoke-virtual {v1, v8}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evUnwrapVSW([B)Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;

    move-result-object v15

    .line 521
    .local v15, "tvsw":Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
    if-nez v15, :cond_3

    .line 522
    return-object v11

    .line 527
    :cond_3
    :try_start_3
    iget-object v2, v15, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->v:[B

    iget-object v3, v15, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->s:[B

    invoke-virtual {v1, v2, v3}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetEvS([B[B)[B

    move-result-object v4

    .line 528
    .local v4, "eVS":[B
    if-nez v4, :cond_4

    .line 529
    return-object v11

    .line 532
    :cond_4
    iget-object v2, v1, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    const-string v3, "ev2_rk"

    const-string v5, "ev2_cek"

    iget-object v6, v15, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->w:[B

    invoke-interface {v10}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyRegister(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v3

    .line 533
    .local v3, "eCeRk":[B
    iget-object v5, v15, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B

    move-object/from16 v2, p2

    move-object v6, v3

    move-object v7, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    .end local v3    # "eCeRk":[B
    .end local v4    # "eVS":[B
    .local v6, "eCeRk":[B
    .local v7, "eVS":[B
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evRegistGetSignEceRk([B[B[B[B[B[B)[B

    move-result-object v5
    :try_end_3
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v6

    move-object v4, v7

    .line 534
    .end local v6    # "eCeRk":[B
    .end local v7    # "eVS":[B
    .restart local v3    # "eCeRk":[B
    .restart local v4    # "eVS":[B
    .local v5, "signEceRk":[B
    if-nez v5, :cond_5

    .line 535
    :try_start_4
    const-string v1, "Fail to get signEceRk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-object v11

    .line 539
    :cond_5
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;

    iget-object v2, v15, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B
    :try_end_4
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v1, p0

    :try_start_5
    invoke-direct/range {v0 .. v5}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;-><init>(Lcom/samsung/security/fabric/crypto/FabricEscrowVault;[B[B[B[B)V
    :try_end_5
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v0

    .line 540
    .end local v3    # "eCeRk":[B
    .end local v4    # "eVS":[B
    .end local v5    # "signEceRk":[B
    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 541
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    :goto_0
    invoke-direct {v1, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 542
    return-object v11

    .line 515
    .end local v0    # "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    .end local v14    # "ret":Z
    .end local v15    # "tvsw":Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
    .restart local v2    # "ret":Z
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    move-object/from16 v13, p5

    .line 516
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    invoke-direct {v1, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 517
    return-object v11
.end method

.method public evSaltDecrypt([B)[B
    .locals 2
    .param p1, "eSalt"    # [B

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    const-string v1, "ev2_rsa"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->decryptSalt(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 375
    const/4 v1, 0x0

    return-object v1
.end method

.method public evSign(Ljava/security/PrivateKey;[BLjava/lang/String;)[B
    .locals 2
    .param p1, "sk"    # Ljava/security/PrivateKey;
    .param p2, "msg"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 843
    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 844
    .local v0, "sig":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 845
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 847
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method public evSignData([B)[B
    .locals 5
    .param p1, "msg"    # [B

    .line 354
    const-string v0, "SHA384withECDSA"

    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetTaSignPrivKeyHandle()Ljava/security/PrivateKey;

    move-result-object v1

    .line 355
    .local v1, "sk":Ljava/security/PrivateKey;
    invoke-virtual {p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evGetTaSignPubkey()Ljava/security/PublicKey;

    move-result-object v2

    .line 358
    .local v2, "pk":Ljava/security/PublicKey;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evSign(Ljava/security/PrivateKey;[BLjava/lang/String;)[B

    move-result-object v4

    .line 359
    .local v4, "sign":[B
    invoke-virtual {p0, v2, p1, v4, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->evVerify(Ljava/security/PublicKey;[B[BLjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 360
    return-object v4

    .line 362
    :cond_0
    return-object v3

    .line 363
    .end local v4    # "sign":[B
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 365
    return-object v3
.end method

.method public evUnwrapVSW([B)Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
    .locals 6
    .param p1, "eVSW"    # [B

    .line 429
    new-instance v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;

    invoke-direct {v0, p0}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;-><init>(Lcom/samsung/security/fabric/crypto/FabricEscrowVault;)V

    .line 431
    .local v0, "et":Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->mFc:Lcom/samsung/security/fabric/crypto/FabricCrypto;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/samsung/security/fabric/crypto/FabricCrypto;->keyDerivation([BI)[B

    move-result-object v1

    .line 433
    .local v1, "swtv":[B
    array-length v3, v1

    const/16 v4, 0x41

    sub-int/2addr v3, v4

    .line 434
    .local v3, "extraSize":I
    const/16 v5, 0x20

    invoke-static {v1, v2, v5}, Lcom/samsung/security/fabric/crypto/Utils;->subarray([BII)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->s:[B

    .line 435
    invoke-static {v1, v5, v5}, Lcom/samsung/security/fabric/crypto/Utils;->subarray([BII)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->w:[B

    .line 436
    const/16 v2, 0x40

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lcom/samsung/security/fabric/crypto/Utils;->subarray([BII)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B

    .line 437
    invoke-static {v1, v4, v3}, Lcom/samsung/security/fabric/crypto/Utils;->subarray([BII)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->v:[B

    .line 439
    iget-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B

    const-string v4, "1"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    const-string v2, "PIN"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B

    .line 441
    :cond_0
    iget-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B

    const-string v4, "2"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    const-string v2, "PATTERN"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B

    .line 443
    :cond_1
    iget-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B

    const-string v4, "3"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    const-string v2, "PASSWORD"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/security/fabric/crypto/FabricEscrowVault$EVType;->verifierType:[B
    :try_end_0
    .catch Lcom/samsung/security/fabric/crypto/FabricCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_2
    return-object v0

    .line 447
    .end local v1    # "swtv":[B
    .end local v3    # "extraSize":I
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Lcom/samsung/security/fabric/crypto/FabricCryptoException;
    invoke-direct {p0, v1}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 449
    const/4 v2, 0x0

    return-object v2
.end method

.method public evVerify(Ljava/security/PublicKey;[B[BLjava/lang/String;)Z
    .locals 4
    .param p1, "pk"    # Ljava/security/PublicKey;
    .param p2, "msg"    # [B
    .param p3, "sign"    # [B
    .param p4, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 854
    const-string v0, "FK-FabricEscrowVault"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 856
    const-string v2, "evVerify pk is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return v1

    .line 859
    :cond_0
    if-nez p2, :cond_1

    .line 860
    const-string v2, "evVerify msg is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v1

    .line 863
    :cond_1
    if-nez p3, :cond_2

    .line 864
    const-string v2, "evVerify sign is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return v1

    .line 867
    :cond_2
    const/4 v1, 0x0

    .line 869
    .local v1, "ret":Z
    invoke-static {p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 870
    .local v2, "sig":Ljava/security/Signature;
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 871
    invoke-virtual {v2, p2}, Ljava/security/Signature;->update([B)V

    .line 872
    invoke-virtual {v2, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    .line 873
    if-nez v1, :cond_3

    .line 874
    const-string v3, "evVerify fail - sign mismatched"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_3
    return v1
.end method

.method public evVerifyCert([Ljava/security/cert/Certificate;I)Z
    .locals 10
    .param p1, "cert"    # [Ljava/security/cert/Certificate;
    .param p2, "type"    # I

    .line 798
    const/4 v0, 0x0

    const-string v1, "FK-FabricEscrowVault"

    if-nez p1, :cond_0

    .line 799
    :try_start_0
    const-string v2, "cert chain is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return v0

    .line 803
    :cond_0
    array-length v2, p1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 804
    .local v2, "x509Certificates":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 805
    aget-object v4, p1, v3

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v2, v3

    .line 804
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 807
    .end local v3    # "i":I
    :cond_1
    const-string v3, "Certificates changed to X509 Certificate"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    aget-object v3, v2, v0

    .line 810
    .local v3, "leafCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 811
    .local v4, "issuer":Ljavax/security/auth/x500/X500Principal;
    const-string v5, "got the issuer"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/security/fabric/crypto/FabricEscrowVaultUtils;->getRoot(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 814
    .local v5, "parent":Ljava/security/cert/X509Certificate;
    array-length v6, v2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 815
    aget-object v8, v2, v6

    .line 816
    .local v8, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 817
    move-object v5, v8

    .line 814
    .end local v8    # "certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 819
    .end local v6    # "i":I
    :cond_2
    const-string v6, "cert chain is verification is done"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    nop

    .line 827
    .end local v2    # "x509Certificates":[Ljava/security/cert/X509Certificate;
    .end local v3    # "leafCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "parent":Ljava/security/cert/X509Certificate;
    const-string v0, "cert chain verified"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return v7

    .line 820
    :catch_0
    move-exception v2

    .line 823
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-direct {p0, v2}, Lcom/samsung/security/fabric/crypto/FabricEscrowVault;->updateErrMsg(Ljava/lang/Exception;)V

    .line 825
    return v0
.end method
