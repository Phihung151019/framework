.class Lcom/samsung/android/wfd/ConnectionMode$1;
.super Ljava/lang/Object;
.source "ConnectionMode.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wfd/ConnectionMode;->registerDisplayChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wfd/ConnectionMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/wfd/ConnectionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/wfd/ConnectionMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "i"    # I

    .line 123
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 112
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v0, v0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    const/4 v1, -0x1

    const-string v2, "ConnectionMode"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v0, v0, Lcom/samsung/android/wfd/ConnectionMode;->mHiddenDisplayID:I

    if-ne p1, v0, :cond_0

    .line 113
    const-string v0, "appcast display changed"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayValue()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    iget v0, v0, Lcom/samsung/android/wfd/ConnectionMode;->mExternalDisplayID:I

    if-ne p1, v0, :cond_1

    .line 116
    const-string v0, "dexmode display changed"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/wfd/ConnectionMode$1;->this$0:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayValue()V

    .line 119
    :cond_1
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "i"    # I

    .line 127
    return-void
.end method
