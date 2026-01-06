.class Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/service/KnoxZtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZtfwReceiver"
.end annotation


# instance fields
.field public final synthetic blacklist this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.knox.zt.devicetrust.monitor.action.ZERO_TRUST_FRAMEWORK_STARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/knox/zt/service/KnoxZtService;->TAG:Ljava/lang/String;

    const-string p2, "onReceive() - ACTION_ZERO_TRUST_FRAMEWORK_STARTED"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$ZtfwReceiver;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->onKnoxZtFrameworkStarted()V

    :cond_0
    return-void
.end method
