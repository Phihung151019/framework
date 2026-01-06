.class public Lcom/sec/vsim/attsoftphone/SoftphoneManager;
.super Ljava/lang/Object;
.source "SoftphoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SoftphoneManager"

.field public static final SERVICE_NAME:Ljava/lang/String; = "softphone"


# instance fields
.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

.field private mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/vsim/attsoftphone/SoftphoneManager;)Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSoftphoneService(Lcom/sec/vsim/attsoftphone/SoftphoneManager;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    .line 24
    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    .line 42
    new-instance v0, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;

    invoke-direct {v0, p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;-><init>(Lcom/sec/vsim/attsoftphone/SoftphoneManager;)V

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mConnection:Landroid/content/ServiceConnection;

    .line 33
    iput-object p1, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    .line 35
    return-void
.end method

.method private getSoftphoneService()Lcom/sec/vsim/attsoftphone/ISoftphoneService;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    return-object v0
.end method

.method private isServiceBinded()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-nez v0, :cond_0

    .line 107
    const-string v0, "SoftphoneManager"

    const-string v1, "Service not binded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public connectService()V
    .locals 5

    .line 63
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->getSoftphoneService()Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 64
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    const-string v1, "SoftphoneManager"

    if-nez v0, :cond_0

    .line 65
    const-string v0, "Connecting to Softphone Service..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.sec.imsservice"

    const-string v3, "com.sec.internal.ims.entitlement.softphone.SoftphoneService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service bounding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    goto :goto_0

    .line 75
    :cond_0
    const-string v0, "mSoftphoneService is not null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    invoke-interface {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;->onConnected()V

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "SoftphoneServiceListener is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void
.end method

.method public deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;

    .line 138
    const-string v0, "SoftphoneManager"

    const-string v1, "deregisterProgressListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 228
    const-string v0, "SoftphoneManager"

    const-string v1, "deregisterSupplementaryServiceListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public disconnectService()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "SoftphoneManager"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    invoke-interface {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;->onDisconnected()V

    .line 94
    :cond_1
    :goto_0
    return-void
.end method

.method public exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "clientId"    # I
    .param p2, "authorizationCode"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "tGuardAppId"    # Ljava/lang/String;
    .param p5, "environment"    # I

    .line 150
    const-string v0, "SoftphoneManager"

    const-string v1, "exchangeForAccessToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "clientId":I
    .end local p2    # "authorizationCode":Ljava/lang/String;
    .end local p3    # "accountId":Ljava/lang/String;
    .end local p4    # "tGuardAppId":Ljava/lang/String;
    .end local p5    # "environment":I
    .local v2, "clientId":I
    .local v3, "authorizationCode":Ljava/lang/String;
    .local v4, "accountId":Ljava/lang/String;
    .local v5, "tGuardAppId":Ljava/lang/String;
    .local v6, "environment":I
    :try_start_1
    invoke-interface/range {v1 .. v6}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "clientId":I
    .end local v3    # "authorizationCode":Ljava/lang/String;
    .end local v4    # "accountId":Ljava/lang/String;
    .end local v5    # "tGuardAppId":Ljava/lang/String;
    .end local v6    # "environment":I
    .restart local p1    # "clientId":I
    .restart local p2    # "authorizationCode":Ljava/lang/String;
    .restart local p3    # "accountId":Ljava/lang/String;
    .restart local p4    # "tGuardAppId":Ljava/lang/String;
    .restart local p5    # "environment":I
    :catch_1
    move-exception v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object p1, v0

    .line 156
    .end local p2    # "authorizationCode":Ljava/lang/String;
    .end local p3    # "accountId":Ljava/lang/String;
    .end local p4    # "tGuardAppId":Ljava/lang/String;
    .end local p5    # "environment":I
    .restart local v2    # "clientId":I
    .restart local v3    # "authorizationCode":Ljava/lang/String;
    .restart local v4    # "accountId":Ljava/lang/String;
    .restart local v5    # "tGuardAppId":Ljava/lang/String;
    .restart local v6    # "environment":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v2    # "clientId":I
    .end local v3    # "authorizationCode":Ljava/lang/String;
    .end local v4    # "accountId":Ljava/lang/String;
    .end local v5    # "tGuardAppId":Ljava/lang/String;
    .end local v6    # "environment":I
    .local p1, "clientId":I
    .restart local p2    # "authorizationCode":Ljava/lang/String;
    .restart local p3    # "accountId":Ljava/lang/String;
    .restart local p4    # "tGuardAppId":Ljava/lang/String;
    .restart local p5    # "environment":I
    :cond_0
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 159
    .end local p1    # "clientId":I
    .end local p2    # "authorizationCode":Ljava/lang/String;
    .end local p3    # "accountId":Ljava/lang/String;
    .end local p4    # "tGuardAppId":Ljava/lang/String;
    .end local p5    # "environment":I
    .restart local v2    # "clientId":I
    .restart local v3    # "authorizationCode":Ljava/lang/String;
    .restart local v4    # "accountId":Ljava/lang/String;
    .restart local v5    # "tGuardAppId":Ljava/lang/String;
    .restart local v6    # "environment":I
    :goto_1
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    const-string v0, "SoftphoneManager"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 100
    invoke-virtual {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->disconnectService()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    .line 102
    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    .line 103
    return-void
.end method

.method public getCallForwardingInfo(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 250
    const-string v0, "SoftphoneManager"

    const-string v1, "getCallForwardingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallForwardingInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getCallWaitingInfo(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 239
    const-string v0, "SoftphoneManager"

    const-string v1, "getCallWaitingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallWaitingInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getClientId(Ljava/lang/String;)I
    .locals 2
    .param p1, "accountId"    # Ljava/lang/String;

    .line 115
    const-string v0, "SoftphoneManager"

    const-string v1, "getClientId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getClientId(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getDeviceList(I)Ljava/util/List;
    .locals 2
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 294
    const-string v0, "SoftphoneManager"

    const-string v1, "getDeviceList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getDeviceList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTermsConditions(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 283
    const-string v0, "SoftphoneManager"

    const-string v1, "getTermsConditions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getTermsConditions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public logOut(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 206
    const-string v0, "SoftphoneManager"

    const-string v1, "logOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->logOut(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public provisionAccount(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 162
    const-string v0, "SoftphoneManager"

    const-string v1, "provisionAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->provisionAccount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;

    .line 127
    const-string v0, "SoftphoneManager"

    const-string v1, "registerProgressListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 217
    const-string v0, "SoftphoneManager"

    const-string v1, "registerSupplementaryServiceListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 272
    const-string v0, "SoftphoneManager"

    const-string v1, "setCallForwardingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 261
    const-string v0, "SoftphoneManager"

    const-string v1, "setCallWaitingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public tryDeregister(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 195
    const-string v0, "SoftphoneManager"

    const-string v1, "tryDeregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->tryDeregister(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public tryRegister(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 184
    const-string v0, "SoftphoneManager"

    const-string v1, "tryRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->tryRegister(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "addressId"    # I
    .param p3, "confirmed"    # Z
    .param p4, "listener"    # Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    .line 173
    const-string v0, "SoftphoneManager"

    const-string v1, "validateE911Address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
