.class public Lcom/samsung/android/security/mdf/MdfUtils;
.super Ljava/lang/Object;
.source "MdfUtils.java"


# static fields
.field public static final blacklist AUDIT_LOG_ALERT:I = 0x1

.field public static final blacklist AUDIT_LOG_CRITICAL:I = 0x2

.field public static final blacklist AUDIT_LOG_ERROR:I = 0x3

.field public static final blacklist AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final blacklist AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final blacklist AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final blacklist AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final blacklist AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final blacklist AUDIT_LOG_NOTICE:I = 0x5

.field public static final blacklist AUDIT_LOG_WARNING:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildHostnameLog(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist byteArrayToHexString([B)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist decryptMdf([BLjava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist encryptMdf([BLjava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getPid()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getUid()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist hexStringToByteArray(Ljava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist isCertificateAllowed([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isHostnameAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isMdfApplied()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isMdfDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isMdfEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isMdfEnforced()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isMdfReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isMdfSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist logMdf(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static blacklist logMdf(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static blacklist logMdf(ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static blacklist logMdf(ZLjava/lang/String;ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static blacklist updateMdfStatus()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist updateMdfVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist FIPS_Openssl_SelfTest()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getCCModeFlag()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSBFlag()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist setCCModeFlag(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist setSBFlagOff()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist setSBFlagOn()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
