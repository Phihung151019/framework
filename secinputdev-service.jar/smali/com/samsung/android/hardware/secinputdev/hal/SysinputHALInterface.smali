.class public interface abstract Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
.super Ljava/lang/Object;
.source "SysinputHALInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;
    }
.end annotation


# static fields
.field public static final RESULT_STR_NG:Ljava/lang/String; = "NG"


# virtual methods
.method public activate(IIZ)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "enable"    # I
    .param p3, "isEarly"    # Z

    .line 75
    const-string v0, "SysinputHALInterface"

    const-string v1, "activate: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, -0x5

    return v0
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 114
    return-void
.end method

.method public getDeviceList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "forceParse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    const-string v0, "SysinputHALInterface"

    const-string v1, "getDeviceList forceParse: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getKeyState(I)Ljava/lang/String;
    .locals 2
    .param p1, "keycode"    # I

    .line 95
    const-string v0, "SysinputHALInterface"

    const-string v1, "getKeyState: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v0, "NG"

    return-object v0
.end method

.method public getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;
    .locals 2
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 90
    const-string v0, "SysinputHALInterface"

    const-string v1, "getProperty: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "NG"

    return-object v0
.end method

.method public abstract getVersion()F
.end method

.method public injectRawdata(I[II)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "list"    # [I
    .param p3, "size"    # I

    .line 70
    const-string v0, "SysinputHALInterface"

    const-string v1, "injectRawdata: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, -0x5

    return v0
.end method

.method public onReportInformation(ILjava/lang/String;)V
    .locals 2
    .param p1, "devid"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 110
    const-string v0, "SysinputHALInterface"

    const-string v1, "onReportInformation: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public readTaas()Ljava/lang/String;
    .locals 2

    .line 100
    const-string v0, "SysinputHALInterface"

    const-string v1, "readTaas: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "NG"

    return-object v0
.end method

.method public registerCallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;)I
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    .line 60
    const-string v0, "SysinputHALInterface"

    const-string v1, "registerCallback(IBinder): not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, -0x5

    return v0
.end method

.method public runCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 80
    const-string v0, "SysinputHALInterface"

    const-string v1, "runCommand: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "NG"

    return-object v0
.end method

.method public setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;

    .line 85
    const-string v0, "SysinputHALInterface"

    const-string v1, "setProperty: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, -0x5

    return v0
.end method

.method public streamRawdata(II)I
    .locals 2
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 65
    const-string v0, "SysinputHALInterface"

    const-string v1, "streamRawdata: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, -0x5

    return v0
.end method

.method public writeTaas(Ljava/lang/String;)I
    .locals 2
    .param p1, "wstr"    # Ljava/lang/String;

    .line 105
    const-string v0, "SysinputHALInterface"

    const-string v1, "writeTaas: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, -0x5

    return v0
.end method
