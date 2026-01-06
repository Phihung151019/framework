.class public interface abstract Lcom/samsung/android/knox/zt/service/IKnoxZtService;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;,
        Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub;,
        Lcom/samsung/android/knox/zt/service/IKnoxZtService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.zt.service.IKnoxZtService"


# virtual methods
.method public abstract blacklist ackSignal([J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAppIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;[Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getChallenge(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceId(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getIntegrityStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMonitoringSnapshot(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getOrigin(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getRootOfTrustStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSecurityLevel(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist provisionCert(Lcom/samsung/android/knox/zt/service/ParcelableProfile;Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist queryAllSignals(Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist querySignals(Ljava/lang/String;Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopMonitoringDomains()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopMonitoringFiles()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopTracing(ILcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
