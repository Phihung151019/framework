.class synthetic Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Device:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1129
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Device:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Device:[I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Device:[I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
