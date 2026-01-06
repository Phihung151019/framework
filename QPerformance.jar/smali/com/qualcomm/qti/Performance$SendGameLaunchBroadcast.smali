.class Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/Performance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendGameLaunchBroadcast"
.end annotation


# instance fields
.field public blacklist pkgName:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/qualcomm/qti/Performance;


# direct methods
.method public constructor blacklist <init>(Lcom/qualcomm/qti/Performance;Ljava/lang/String;)V
    .locals 2
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p2, p0, Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;->pkgName:Ljava/lang/String;

    .line 274
    const-string v0, "vendor.perf.gre.enable"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/qualcomm/qti/Performance;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfputGRE_ENABLE(Ljava/lang/Boolean;)V

    .line 275
    return-void
.end method

.method private blacklist sendGreGameBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetPKGNAME_GENSHIN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v0, "greLaunchIntent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 296
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetACTION_GRE_LAUNCH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetPKGNAME_GRE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send launch broadcast to gameruntime apk, game package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Perf"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 278
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetmIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;->this$0:Lcom/qualcomm/qti/Performance;

    const/16 v1, 0x1601

    iget-object v2, p0, Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qti/Performance;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "appType":I
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetmIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PKG_NAME"

    iget-object v3, p0, Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetmIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "APP_TYP"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetmIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetGRE_ENABLE()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/Performance$SendGameLaunchBroadcast;->sendGreGameBroadcast(Ljava/lang/String;)V

    .line 287
    .end local v0    # "appType":I
    :cond_0
    return-void
.end method
