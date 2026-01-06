.class public final Landroidx/car/app/model/TemplateWrapper;
.super Ljava/lang/Object;
.source "TemplateWrapper.java"


# instance fields
.field private mCurrentTaskStep:I

.field private mId:Ljava/lang/String;

.field private mIsRefresh:Z

.field private mTemplate:Landroidx/car/app/model/Template;

.field private mTemplateInfoForScreenStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/model/TemplateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplateInfoForScreenStack:Ljava/util/List;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Landroidx/car/app/model/Template;

    .line 192
    const-string v0, ""

    iput-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    .line 193
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/Template;Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Landroidx/car/app/model/Template;
    .param p2, "id"    # Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplateInfoForScreenStack:Ljava/util/List;

    .line 186
    iput-object p1, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Landroidx/car/app/model/Template;

    .line 187
    iput-object p2, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public static copyOf(Landroidx/car/app/model/TemplateWrapper;)Landroidx/car/app/model/TemplateWrapper;
    .locals 2
    .param p0, "source"    # Landroidx/car/app/model/TemplateWrapper;

    .line 169
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getTemplate()Landroidx/car/app/model/Template;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/car/app/model/TemplateWrapper;->wrap(Landroidx/car/app/model/Template;Ljava/lang/String;)Landroidx/car/app/model/TemplateWrapper;

    move-result-object v0

    .line 170
    .local v0, "destination":Landroidx/car/app/model/TemplateWrapper;
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->isRefresh()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/TemplateWrapper;->setRefresh(Z)V

    .line 171
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getCurrentTaskStep()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/car/app/model/TemplateWrapper;->setCurrentTaskStep(I)V

    .line 172
    invoke-virtual {p0}, Landroidx/car/app/model/TemplateWrapper;->getTemplateInfosForScreenStack()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "templateInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/TemplateInfo;>;"
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0, v1}, Landroidx/car/app/model/TemplateWrapper;->setTemplateInfosForScreenStack(Ljava/util/List;)V

    .line 176
    :cond_0
    return-object v0
.end method

.method private static createRandomId()Ljava/lang/String;
    .locals 1

    .line 196
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Landroidx/car/app/model/Template;)Landroidx/car/app/model/TemplateWrapper;
    .locals 1
    .param p0, "template"    # Landroidx/car/app/model/Template;

    .line 76
    invoke-static {}, Landroidx/car/app/model/TemplateWrapper;->createRandomId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/car/app/model/TemplateWrapper;->wrap(Landroidx/car/app/model/Template;Ljava/lang/String;)Landroidx/car/app/model/TemplateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Landroidx/car/app/model/Template;Ljava/lang/String;)Landroidx/car/app/model/TemplateWrapper;
    .locals 3
    .param p0, "template"    # Landroidx/car/app/model/Template;
    .param p1, "id"    # Ljava/lang/String;

    .line 93
    new-instance v0, Landroidx/car/app/model/TemplateWrapper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/Template;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/car/app/model/TemplateWrapper;-><init>(Landroidx/car/app/model/Template;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCurrentTaskStep()I
    .locals 1

    .line 138
    iget v0, p0, Landroidx/car/app/model/TemplateWrapper;->mCurrentTaskStep:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Landroidx/car/app/model/Template;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Landroidx/car/app/model/Template;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Template;

    return-object v0
.end method

.method public getTemplateInfosForScreenStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/model/TemplateInfo;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplateInfoForScreenStack:Ljava/util/List;

    invoke-static {v0}, Landroidx/car/app/utils/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isRefresh()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Landroidx/car/app/model/TemplateWrapper;->mIsRefresh:Z

    return v0
.end method

.method public setCurrentTaskStep(I)V
    .locals 0
    .param p1, "currentTaskStep"    # I

    .line 143
    iput p1, p0, Landroidx/car/app/model/TemplateWrapper;->mCurrentTaskStep:I

    .line 144
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0
    .param p1, "isRefresh"    # Z

    .line 148
    iput-boolean p1, p0, Landroidx/car/app/model/TemplateWrapper;->mIsRefresh:Z

    .line 149
    return-void
.end method

.method public setTemplate(Landroidx/car/app/model/Template;)V
    .locals 0
    .param p1, "template"    # Landroidx/car/app/model/Template;

    .line 158
    iput-object p1, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Landroidx/car/app/model/Template;

    .line 159
    return-void
.end method

.method public setTemplateInfosForScreenStack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/TemplateInfo;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "templateInfoForScreenStack":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/TemplateInfo;>;"
    iput-object p1, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplateInfoForScreenStack:Ljava/util/List;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[template: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/TemplateWrapper;->mTemplate:Landroidx/car/app/model/Template;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/TemplateWrapper;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
