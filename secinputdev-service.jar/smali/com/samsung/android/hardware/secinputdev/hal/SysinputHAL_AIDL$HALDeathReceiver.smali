.class final Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$HALDeathReceiver;
.super Ljava/lang/Object;
.source "SysinputHAL_AIDL.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HALDeathReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$HALDeathReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$HALDeathReceiver;-><init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 94
    const-string v0, "SysinputHAL_AIDL"

    const-string v1, "RIP HAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$HALDeathReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->setServiceNullAndRecovery()V

    .line 96
    return-void
.end method
