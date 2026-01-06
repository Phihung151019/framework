.class public Lcom/samsung/android/hardware/secinputdev/device/Keyboard;
.super Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
.source "Keyboard.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "devid"    # I
    .param p3, "feature"    # I
    .param p4, "cmdlist"    # Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected supportActivate()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method
