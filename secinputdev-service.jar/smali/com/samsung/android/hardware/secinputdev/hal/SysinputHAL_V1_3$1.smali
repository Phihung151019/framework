.class Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$1;
.super Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback$Stub;
.source "SysinputHAL_V1_3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$1;->this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;

    invoke-direct {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportInformation(ILjava/lang/String;)V
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I

    move-result v0

    .line 336
    .local v0, "type":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$1;->this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->-$$Nest$fgetcallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->onReportInformation(ILjava/lang/String;)V

    .line 337
    return-void
.end method

.method public onReportRawData(IILjava/util/ArrayList;)V
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->convertInputDeviceTypeToDevid(Ljava/lang/Integer;)I

    move-result v0

    .line 342
    .local v0, "type":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3$1;->this$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;->-$$Nest$fgetcallback(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_3;)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALCallback;->onReportRawData(IILjava/util/ArrayList;)V

    .line 343
    return-void
.end method
