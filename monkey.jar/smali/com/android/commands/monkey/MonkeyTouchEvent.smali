.class public Lcom/android/commands/monkey/MonkeyTouchEvent;
.super Lcom/android/commands/monkey/MonkeyMotionEvent;
.source "MonkeyTouchEvent.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "action"    # I

    .line 28
    const/16 v0, 0x1002

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IIII)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getTypeLabel()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "Touch"

    return-object v0
.end method
