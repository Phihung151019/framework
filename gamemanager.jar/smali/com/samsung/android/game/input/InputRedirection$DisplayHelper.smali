.class public Lcom/samsung/android/game/input/InputRedirection$DisplayHelper;
.super Ljava/lang/Object;
.source "InputRedirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/input/InputRedirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecondaryDisplaySize(Landroid/content/Context;)[I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 105
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 106
    return-object v1

    .line 108
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 109
    .local v2, "subDisplay":Landroid/view/Display;
    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    return-object v1

    .line 113
    :cond_1
    return-object v1
.end method

.method public static getWindowRotation(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 118
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 119
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 120
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 121
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    return v2
.end method
