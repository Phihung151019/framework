.class public Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static volatile blacklist sInstance:Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;


# instance fields
.field public final blacklist mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "DeviceAttestationManager failed : "

    invoke-static {v0, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->sInstance:Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;

    return-object p0
.end method


# virtual methods
.method public blacklist attestKey(Ljava/lang/String;[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->attestKey(Ljava/lang/String;[B)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string p2, "attestKey failed : "

    invoke-static {p2, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAppIdStatus(Ljava/security/cert/X509Certificate;Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getAppIdStatus(Ljava/security/cert/X509Certificate;Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string p2, "getAppIdStatus failed : "

    invoke-static {p2, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getChallenge(Ljava/security/cert/X509Certificate;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getChallenge(Ljava/security/cert/X509Certificate;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "getChallenge failed : "

    invoke-static {v0, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getDeviceId(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getDeviceId(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "getDeviceId failed : "

    invoke-static {v0, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getDeviceIdStatus(Ljava/security/cert/X509Certificate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getDeviceIdStatus(Ljava/security/cert/X509Certificate;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "getDeviceIdStatus failed : "

    invoke-static {v0, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getIntegrityStatus(Ljava/security/cert/X509Certificate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getIntegrityStatus(Ljava/security/cert/X509Certificate;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "getIntegrityStatus failed : "

    invoke-static {v0, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getOrigin(Ljava/security/cert/X509Certificate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getOrigin(Ljava/security/cert/X509Certificate;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "getOrigin failed : "

    invoke-static {v0, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getRootOfTrustStatus(Ljava/security/cert/X509Certificate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getRootOfTrustStatus(Ljava/security/cert/X509Certificate;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "getRootOfTrustStatus failed : "

    invoke-static {v0, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getSecurityLevel(Ljava/security/cert/X509Certificate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/zt/KnoxZtException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager;->mService:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getSecurityLevel(Ljava/security/cert/X509Certificate;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v0, "getSecurityLevel failed : "

    invoke-static {v0, p0}, Lcom/samsung/android/knox/zt/devicetrust/attestation/DeviceAttestationManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
