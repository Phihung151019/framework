.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;
.super Lcom/samsung/android/mcf/CasterCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mcf/CasterCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMcfServiceStateChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/mcf/CasterCallback;->onMcfServiceStateChanged(II)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "-ME--- onMcfServiceStateChanged, status : "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", i1 : "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "WifiProfileShare.McfCast"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$fgetmMcfCaster(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/mcf/McfCaster;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    if-ne v0, p1, :cond_0

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    if-ne p1, p2, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$fgetmMcfCaster(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/mcf/McfCaster;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p2, p1}, Lcom/samsung/android/mcf/McfCaster;->isNetworkEnabled(I)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$fputmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Z)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method
