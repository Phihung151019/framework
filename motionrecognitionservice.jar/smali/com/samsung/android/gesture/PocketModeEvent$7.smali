.class Lcom/samsung/android/gesture/PocketModeEvent$7;
.super Ljava/lang/Object;
.source "PocketModeEvent.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketModeEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1204
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$7;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "arg0"    # I

    .line 1230
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5
    .param p1, "displayID"    # I

    .line 1212
    if-eqz p1, :cond_0

    .line 1213
    return-void

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$7;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1216
    .local v0, "dp":Landroid/view/Display;
    if-nez v0, :cond_1

    .line 1217
    return-void

    .line 1219
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    .line 1221
    .local v1, "dpState":I
    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_4

    .line 1222
    :cond_2
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_3

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1223
    :cond_3
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensor()V

    .line 1226
    :cond_4
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "arg0"    # I

    .line 1208
    return-void
.end method
