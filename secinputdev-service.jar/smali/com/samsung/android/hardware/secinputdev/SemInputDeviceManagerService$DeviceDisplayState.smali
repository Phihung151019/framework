.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceDisplayState"
.end annotation


# instance fields
.field private currentDisplayIsEarly:Z

.field private currentDisplayState:I

.field private currentPowerState:I

.field private isSkippedDisplayStateChange:Z

.field private isTspForceOff:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentDisplayIsEarly(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->currentDisplayIsEarly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDisplayState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->currentDisplayState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->currentPowerState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSkippedDisplayStateChange(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->isSkippedDisplayStateChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisTspForceOff(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->isTspForceOff:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentDisplayIsEarly(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->currentDisplayIsEarly:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentDisplayState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->currentDisplayState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->currentPowerState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisSkippedDisplayStateChange(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->isSkippedDisplayStateChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisTspForceOff(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->isTspForceOff:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->currentDisplayIsEarly:Z

    .line 116
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->currentDisplayState:I

    .line 117
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->isSkippedDisplayStateChange:Z

    .line 118
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->currentPowerState:I

    .line 119
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->isTspForceOff:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;-><init>()V

    return-void
.end method
