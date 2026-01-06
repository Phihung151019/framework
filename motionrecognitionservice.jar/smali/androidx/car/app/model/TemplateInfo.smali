.class public final Landroidx/car/app/model/TemplateInfo;
.super Ljava/lang/Object;
.source "TemplateInfo.java"


# instance fields
.field private final mTemplateClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/car/app/model/Template;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemplateId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateClass:Ljava/lang/Class;

    .line 99
    iput-object v0, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/car/app/model/Template;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    .local p1, "templateClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/car/app/model/Template;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateClass:Ljava/lang/Class;

    .line 51
    iput-object p2, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateId:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 86
    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/TemplateInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 89
    return v2

    .line 91
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/TemplateInfo;

    .line 93
    .local v1, "otherInfo":Landroidx/car/app/model/TemplateInfo;
    iget-object v3, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateClass:Ljava/lang/Class;

    iget-object v4, v1, Landroidx/car/app/model/TemplateInfo;->mTemplateClass:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateId:Ljava/lang/String;

    iget-object v4, v1, Landroidx/car/app/model/TemplateInfo;->mTemplateId:Ljava/lang/String;

    .line 94
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 93
    :goto_0
    return v0
.end method

.method public getTemplateClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/car/app/model/Template;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateClass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    iget-object v0, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateClass:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/car/app/model/TemplateInfo;->mTemplateId:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
