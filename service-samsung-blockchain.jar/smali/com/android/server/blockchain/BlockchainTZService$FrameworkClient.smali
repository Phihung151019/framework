.class Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
.super Ljava/lang/Object;
.source "BlockchainTZService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blockchain/BlockchainTZService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameworkClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;
    }
.end annotation


# instance fields
.field mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

.field mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

.field final mPackageName:Ljava/lang/String;

.field final mPid:I

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/blockchain/BlockchainTZService;


# direct methods
.method public constructor <init>(Lcom/android/server/blockchain/BlockchainTZService;Landroid/blockchain/BlockchainTZServiceConfig;Landroid/blockchain/BlockchainTZServiceCommnInfo;IILjava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/blockchain/BlockchainTZService;
    .param p2, "config"    # Landroid/blockchain/BlockchainTZServiceConfig;
    .param p3, "tzSvcInfo"    # Landroid/blockchain/BlockchainTZServiceCommnInfo;
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->this$0:Lcom/android/server/blockchain/BlockchainTZService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    .line 69
    iput-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    .line 77
    iput-object p3, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    .line 78
    iput p4, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mUid:I

    .line 79
    iput p5, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPid:I

    .line 80
    iput-object p6, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPackageName:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;-><init>(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;)V

    iput-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    .line 82
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    iget-object v1, p2, Landroid/blockchain/BlockchainTZServiceConfig;->mClient:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->setReceiver(Landroid/os/IBinder;)V

    .line 84
    :try_start_0
    iget-object v0, p2, Landroid/blockchain/BlockchainTZServiceConfig;->mClient:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
