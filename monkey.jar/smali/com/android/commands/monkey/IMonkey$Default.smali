.class public Lcom/android/commands/monkey/IMonkey$Default;
.super Ljava/lang/Object;
.source "IMonkey.java"

# interfaces
.implements Lcom/android/commands/monkey/IMonkey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/IMonkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTouchEvent(IIIFFFFJ)Z
    .locals 1
    .param p1, "pointerId"    # I
    .param p2, "toolType"    # I
    .param p3, "action"    # I
    .param p4, "locationX"    # F
    .param p5, "locationY"    # F
    .param p6, "pressure"    # F
    .param p7, "majorAxisSize"    # F
    .param p8, "eventTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method
