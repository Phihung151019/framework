.class Lcom/samsung/security/fabric/crypto/Utils;
.super Ljava/lang/Object;
.source "FabricEscrowVault.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FK-FabricEscrowVault"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArrayToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .line 1036
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static concat([BII[BII)[B
    .locals 2
    .param p0, "arr1"    # [B
    .param p1, "offset1"    # I
    .param p2, "len1"    # I
    .param p3, "arr2"    # [B
    .param p4, "offset2"    # I
    .param p5, "len2"    # I

    .line 1061
    if-nez p2, :cond_0

    .line 1062
    invoke-static {p3, p4, p5}, Lcom/samsung/security/fabric/crypto/Utils;->subarray([BII)[B

    move-result-object v0

    return-object v0

    .line 1063
    :cond_0
    if-nez p5, :cond_1

    .line 1064
    invoke-static {p0, p1, p2}, Lcom/samsung/security/fabric/crypto/Utils;->subarray([BII)[B

    move-result-object v0

    return-object v0

    .line 1066
    :cond_1
    add-int v0, p2, p5

    new-array v0, v0, [B

    .line 1067
    .local v0, "result":[B
    if-lez p2, :cond_2

    .line 1068
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1070
    :cond_2
    if-lez p5, :cond_3

    .line 1071
    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1073
    :cond_3
    return-object v0
.end method

.method static concat([B[B)[B
    .locals 8
    .param p0, "arr1"    # [B
    .param p1, "arr2"    # [B

    .line 1055
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    .line 1056
    :goto_0
    if-eqz p1, :cond_1

    array-length v0, p1

    :cond_1
    move v7, v0

    .line 1055
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    .end local p0    # "arr1":[B
    .end local p1    # "arr2":[B
    .local v2, "arr1":[B
    .local v5, "arr2":[B
    invoke-static/range {v2 .. v7}, Lcom/samsung/security/fabric/crypto/Utils;->concat([BII[BII)[B

    move-result-object p0

    return-object p0
.end method

.method static convert(Ljava/lang/Iterable;)[Ljava/security/cert/Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[B>;)[",
            "Ljava/security/cert/Certificate;"
        }
    .end annotation

    .line 1040
    .local p0, "certificates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 1041
    .local v0, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v1, "certificateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1043
    .local v3, "certBytes":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 1045
    .local v4, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    nop

    .end local v3    # "certBytes":[B
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    goto :goto_0

    .line 1047
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1048
    .end local v0    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "certificateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "FK-FabricEscrowVault"

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getChallenge()[B
    .locals 6

    .line 1089
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1090
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 1092
    .local v2, "rand":Ljava/util/Random;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TEST::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1094
    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1095
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1096
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1097
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1098
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1099
    .local v3, "ch":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    return-object v4
.end method

.method static subarray([BII)[B
    .locals 2
    .param p0, "arr"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 1077
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1078
    new-array v0, v0, [B

    return-object v0

    .line 1080
    :cond_0
    if-nez p1, :cond_1

    array-length v1, p0

    if-ne v1, p2, :cond_1

    .line 1081
    return-object p0

    .line 1083
    :cond_1
    new-array v1, p2, [B

    .line 1084
    .local v1, "result":[B
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1085
    return-object v1
.end method
