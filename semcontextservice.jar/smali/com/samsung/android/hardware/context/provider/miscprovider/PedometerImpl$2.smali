.class Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$2;
.super Lcom/samsung/android/hardware/context/util/RestoreManager;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$2;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/util/RestoreManager;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedExceptionKill()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl$2;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerImpl;->remove()V

    .line 98
    return-void
.end method
