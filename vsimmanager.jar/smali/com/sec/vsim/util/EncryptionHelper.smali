.class public Lcom/sec/vsim/util/EncryptionHelper;
.super Ljava/lang/Object;
.source "EncryptionHelper.java"


# static fields
.field private static mEncryptionHelpers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/vsim/util/EncryptionHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/vsim/util/EncryptionHelper;->mEncryptionHelpers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    nop

    .line 48
    :goto_1
    return-void
.end method

.method public static generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p0, "encryptionAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 58
    const/16 v0, 0x100

    .line 60
    .local v0, "outputKeyLength":I
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 62
    .local v1, "secureRandom":Ljava/security/SecureRandom;
    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 63
    .local v2, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v3, 0x100

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 64
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/sec/vsim/util/EncryptionHelper;
    .locals 3
    .param p0, "encryptionAlgorithm"    # Ljava/lang/String;

    const-class v0, Lcom/sec/vsim/util/EncryptionHelper;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/sec/vsim/util/EncryptionHelper;->mEncryptionHelpers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 35
    sget-object v1, Lcom/sec/vsim/util/EncryptionHelper;->mEncryptionHelpers:Ljava/util/Map;

    new-instance v2, Lcom/sec/vsim/util/EncryptionHelper;

    invoke-direct {v2, p0}, Lcom/sec/vsim/util/EncryptionHelper;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    sget-object v1, Lcom/sec/vsim/util/EncryptionHelper;->mEncryptionHelpers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/util/EncryptionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    .end local p0    # "encryptionAlgorithm":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getSecretKey(Landroid/database/Cursor;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 72
    const-string v0, "secret_key"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "encodedKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 74
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 77
    .local v2, "decodedKey":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    array-length v4, v2

    const-string v5, "AES"

    invoke-direct {v3, v2, v1, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 5
    .param p1, "cryptedText"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "decryptedText":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 116
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 117
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 118
    .local v2, "decrypted":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 125
    .end local v1    # "bytes":[B
    .end local v2    # "decrypted":[B
    :goto_0
    goto :goto_1

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .line 119
    :catch_2
    move-exception v1

    .line 120
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 127
    :cond_0
    :goto_1
    return-object v0
.end method

.method public encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 5
    .param p1, "plainText"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "encryptedText":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 90
    iget-object v1, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 92
    .local v1, "encrypted":[B
    new-instance v2, Ljava/lang/String;

    .line 93
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 101
    .end local v1    # "encrypted":[B
    :goto_0
    goto :goto_1

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .line 95
    :catch_2
    move-exception v1

    .line 96
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 102
    :goto_1
    return-object v0
.end method
