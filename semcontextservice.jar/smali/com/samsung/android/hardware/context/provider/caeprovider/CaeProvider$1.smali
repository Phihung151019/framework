.class Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;
.super Ljava/lang/Object;
.source "CaeProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ContextAwareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .line 64
    invoke-static {p1}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProtocol;->convertToSemContext(I)I

    move-result v0

    .line 65
    .local v0, "service":I
    if-gez v0, :cond_0

    return-void

    .line 66
    :cond_0
    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 67
    const-string v1, "DataType"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 68
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;)Lcom/samsung/android/hardware/context/provider/EventListener;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;

    invoke-static {v1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->-$$Nest$msetLastEvent(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 71
    :cond_1
    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->SENSOR_STATUS_CHECK_SERVICE:I

    if-ne p1, v1, :cond_2

    .line 72
    const-string v1, "SemContext.CaeProvider"

    const-string v2, "Store status of sensor data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;

    invoke-static {v1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->-$$Nest$msetLastEvent(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 74
    :cond_2
    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->FREE_FALL_DETECTION_SERVICE:I

    if-ne p1, v1, :cond_4

    .line 75
    const-string v1, "height"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const-string v3, "status"

    if-nez v1, :cond_3

    .line 76
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 78
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;)Lcom/samsung/android/hardware/context/provider/EventListener;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 81
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;

    invoke-static {v1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->-$$Nest$msetLastEvent(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;)Lcom/samsung/android/hardware/context/provider/EventListener;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;

    invoke-static {v1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->-$$Nest$msetLastEvent(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;ILandroid/os/Bundle;)V

    .line 86
    :cond_5
    :goto_1
    return-void
.end method
