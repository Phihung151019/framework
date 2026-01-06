.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2$1;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->onRFDetected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 579
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2$1;->this$1:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2$1;->this$1:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->-$$Nest$fputnfcRFDetected(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;Z)V

    .line 582
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "RF FieldBroadcastReceiver: set off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2$1;->this$1:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;

    iget-object v0, v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->NFC_FIELD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    const-string v2, "0"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    .line 584
    return-void
.end method
