.class Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$1;
.super Lvendor/samsung/hardware/sysinput/ISehSysInputCallback$Stub;
.source "SysinputHAL_AIDL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 583
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$1;->this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;

    invoke-direct {p0}, Lvendor/samsung/hardware/sysinput/ISehSysInputCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 603
    const-string v0, "ebc882a8076245906ae71306e8e0706f50e728ae"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 598
    const/4 v0, 0x2

    return v0
.end method

.method public onReportInformation(ILjava/lang/String;)V
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I

    move-result v0

    .line 587
    .local v0, "type":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$1;->this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->-$$Nest$fgetcallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->onReportInformationAidl(ILjava/lang/String;)V

    .line 588
    return-void
.end method

.method public onReportRawData(II[I)V
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "count"    # I
    .param p3, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I

    move-result v0

    .line 593
    .local v0, "type":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL$1;->this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;->-$$Nest$fgetcallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_AIDL;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->onReportRawData(II[I)V

    .line 594
    return-void
.end method
