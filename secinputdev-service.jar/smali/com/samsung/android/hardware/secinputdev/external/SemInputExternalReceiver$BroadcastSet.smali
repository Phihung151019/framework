.class Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;
.super Ljava/lang/Object;
.source "SemInputExternalReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastSet"
.end annotation


# instance fields
.field private intent:Ljava/lang/String;

.field private permission:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private scheduler:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Z)V
    .locals 0
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->intent:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->permission:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->receiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-boolean p4, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->scheduler:Z

    .line 108
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public needScheduler()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$BroadcastSet;->scheduler:Z

    return v0
.end method
