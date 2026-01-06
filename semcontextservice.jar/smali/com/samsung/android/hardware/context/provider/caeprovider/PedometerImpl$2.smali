.class Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$2;
.super Lcom/samsung/android/hardware/context/util/FaultDetector;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$2;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/context/util/FaultDetector;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public requestPedometer()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$2;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->-$$Nest$mrequestToUpdateForce(Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;)V

    .line 103
    return-void
.end method

.method public restorePedometer()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl$2;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/caeprovider/PedometerImpl;->restore()V

    .line 98
    return-void
.end method
