.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$6;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerForSettingsChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$6;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 2
    .line 3
    iget v0, p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$6;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misSilentRoamingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$6;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$6;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportDisableEvent()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$6;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
