.class Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fputisBound(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetbindResultCallback(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetbindResultCallback(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;->onSuccess()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fputisBound(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, v0, p0, v2}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityAbstractAdapterImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    const-string p0, "onServiceDisconnected reason="

    .line 42
    .line 43
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "SemWifi.Continuity"

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void
.end method
