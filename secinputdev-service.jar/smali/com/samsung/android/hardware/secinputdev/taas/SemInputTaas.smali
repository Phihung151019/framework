.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;
.super Ljava/lang/Object;
.source "SemInputTaas.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputTaas"


# instance fields
.field private final bootingDump:Ljava/lang/StringBuilder;

.field private final context:Landroid/content/Context;

.field private final externalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;",
            ">;"
        }
    .end annotation
.end field

.field private mSemInputTaasCaseFactory:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasCaseFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalEventRegister"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->bootingDump:Ljava/lang/StringBuilder;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->mList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasCaseFactory;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasCaseFactory;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->mSemInputTaasCaseFactory:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasCaseFactory;

    .line 20
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->getInHouse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->context:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IExternalEventRegister;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->externalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    .line 23
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->mSemInputTaasCaseFactory:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasCaseFactory;

    const-string v2, "CASA"

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasCaseFactory;->create(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->mSemInputTaasCaseFactory:Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasCaseFactory;

    const-string v2, "CASB"

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasCaseFactory;->create(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;

    .line 26
    .local v1, "taasCase":Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->externalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;->create(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V

    .end local v1    # "taasCase":Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 29
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->context:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->externalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    .line 32
    :goto_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->getInHouse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;

    .line 42
    .local v1, "taasCase":Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;
    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;->destroy()V

    .end local v1    # "taasCase":Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->externalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->destroy()V

    .line 45
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 35
    const-string v0, "dumping SemInputTaas"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaas;->bootingDump:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    return-void
.end method
