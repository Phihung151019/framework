.class public Lcom/android/commands/monkey/MonkeyTrackballEvent;
.super Lcom/android/commands/monkey/MonkeyMotionEvent;
.source "MonkeyTrackballEvent.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "action"    # I

    .line 27
    const v0, 0x10004

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IIII)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getTypeLabel()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "Trackball"

    return-object v0
.end method
