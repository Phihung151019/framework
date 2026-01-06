.class public Lcom/samsung/vekit/Common/Object/LogProfile;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "LogProfile.java"


# instance fields
.field private logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

.field private pathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "commonPath"    # Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LOG_PROFILE:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->id:I

    .line 22
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->name:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    .line 24
    sget-object v0, Lcom/samsung/vekit/Common/Type/LogProfileType;->COMMON:Lcom/samsung/vekit/Common/Type/LogProfileType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    .line 25
    invoke-direct {p0, p4}, Lcom/samsung/vekit/Common/Object/LogProfile;->setPath(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "sdrPath"    # Ljava/lang/String;
    .param p5, "hdrPath"    # Ljava/lang/String;
    .param p6, "hlgPath"    # Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LOG_PROFILE:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->id:I

    .line 32
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->name:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/samsung/vekit/Common/Type/LogProfileType;->ADAPTIVE:Lcom/samsung/vekit/Common/Type/LogProfileType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    .line 35
    invoke-direct {p0, p4, p5, p6}, Lcom/samsung/vekit/Common/Object/LogProfile;->setPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "commonPath"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string v1, "Path is Empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "filterFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string v2, "filterPath doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 49
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Lcom/samsung/vekit/Common/Type/LogProfileType;->COMMON:Lcom/samsung/vekit/Common/Type/LogProfileType;

    iput-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    .line 51
    return-void
.end method

.method private setPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sdrPath"    # Ljava/lang/String;
    .param p2, "hdrPath"    # Ljava/lang/String;
    .param p3, "hlgPath"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "filterFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string v2, "sdrPath doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 63
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .end local v0    # "filterFile":Ljava/io/File;
    .local v1, "filterFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string v2, "hdrPath doesn\'t exist."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 68
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .end local v1    # "filterFile":Ljava/io/File;
    .restart local v0    # "filterFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string v2, "hlgPath doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/samsung/vekit/Common/Type/LogProfileType;->ADAPTIVE:Lcom/samsung/vekit/Common/Type/LogProfileType;

    iput-object v1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    .line 78
    return-void

    .line 55
    .end local v0    # "filterFile":Ljava/io/File;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->TAG:Ljava/lang/String;

    const-string v1, "Some Path is Empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method


# virtual methods
.method public getLogProfileType()Lcom/samsung/vekit/Common/Type/LogProfileType;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    return-object v0
.end method

.method public getPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->pathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setLogProfileType(Lcom/samsung/vekit/Common/Type/LogProfileType;)V
    .locals 0
    .param p1, "logProfileType"    # Lcom/samsung/vekit/Common/Type/LogProfileType;

    .line 89
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/LogProfile;->logProfileType:Lcom/samsung/vekit/Common/Type/LogProfileType;

    .line 90
    return-void
.end method
