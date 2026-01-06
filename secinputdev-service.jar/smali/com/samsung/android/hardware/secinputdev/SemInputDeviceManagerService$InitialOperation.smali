.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialOperation"
.end annotation


# instance fields
.field private final checkedStates:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    .line 228
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-boolean p1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    if-eqz p1, :cond_0

    .line 231
    sget-boolean p1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->SUPPORT_AWD:Z

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_SENSOR_WATCH:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_AOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_SPEN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->SETTING_TSP_EXTRA:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_FOLD_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DEX:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_PROX_LP_SCAN:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->OBSERVER_UEVENT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public get(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;)Z
    .locals 2
    .param p1, "key"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 252
    .local v0, "value":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public put(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;Z)V
    .locals 2
    .param p1, "key"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;
    .param p2, "registered"    # Z

    .line 247
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->checkedStates:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public update()V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitialOperation::update, wearos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputFeatures;->IS_WEAROS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->getSupportDeviceList()V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$mregisterExternalService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$mregisterSettingObserver(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$mregisterRawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    .line 261
    return-void
.end method
