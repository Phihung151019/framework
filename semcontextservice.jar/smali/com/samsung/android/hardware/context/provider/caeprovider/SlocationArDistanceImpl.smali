.class public Lcom/samsung/android/hardware/context/provider/caeprovider/SlocationArDistanceImpl;
.super Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.source "SlocationArDistanceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemContext.CaeProvider.SlocationArDistanceImpl"


# instance fields
.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 52
    const/16 v0, 0x38

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 53
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SlocationArDistanceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 54
    return-void
.end method


# virtual methods
.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v0, "SemContext.CaeProvider.SlocationArDistanceImpl"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-object p1
.end method

.method public setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V
    .locals 6
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 59
    const/16 v0, 0x38

    invoke-virtual {p2, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SemContext.CaeProvider.SlocationArDistanceImpl"

    if-nez v0, :cond_0

    .line 61
    const-string v2, "setAttribute() : attribute is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 64
    :cond_0
    const-string v2, "mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "mode":I
    const-string v3, "distance_cmd_array"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 67
    .local v3, "intArray":[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAttribute() mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 69
    if-nez v3, :cond_1

    .line 70
    const-string v4, "setAttribute() : int array is null!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SlocationArDistanceImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v4, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_AR_DISTANCE_SERVICE:I

    const/16 v5, 0x77

    invoke-virtual {v1, v4, v5, v3}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[I)Z

    goto :goto_0

    .line 76
    :cond_2
    const-string v4, "mode or action value is wrong!!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void
.end method
