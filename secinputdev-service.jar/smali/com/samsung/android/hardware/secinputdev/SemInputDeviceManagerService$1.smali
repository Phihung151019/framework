.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;
.super Ljava/util/HashMap;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;",
        "Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 83
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->DEFAULT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->EXTRA_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;

    invoke-direct {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method
