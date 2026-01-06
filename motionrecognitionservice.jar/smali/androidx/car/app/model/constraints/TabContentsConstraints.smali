.class public Landroidx/car/app/model/constraints/TabContentsConstraints;
.super Ljava/lang/Object;
.source "TabContentsConstraints.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x6
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/car/app/model/constraints/TabContentsConstraints;


# instance fields
.field private mAllowedTemplateTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/car/app/model/Template;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Landroidx/car/app/model/constraints/TabContentsConstraints;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroidx/car/app/model/ListTemplate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroidx/car/app/model/PaneTemplate;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Landroidx/car/app/model/GridTemplate;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Landroidx/car/app/model/MessageTemplate;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Landroidx/car/app/model/SearchTemplate;

    aput-object v3, v1, v2

    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/TabContentsConstraints;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/car/app/model/constraints/TabContentsConstraints;->DEFAULT:Landroidx/car/app/model/constraints/TabContentsConstraints;

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/car/app/model/Template;",
            ">;>;)V"
        }
    .end annotation

    .line 66
    .local p1, "allowedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroidx/car/app/model/Template;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/car/app/model/constraints/TabContentsConstraints;->mAllowedTemplateTypes:Ljava/util/HashSet;

    .line 68
    return-void
.end method


# virtual methods
.method public validateOrThrow(Landroidx/car/app/model/Template;)V
    .locals 3
    .param p1, "template"    # Landroidx/car/app/model/Template;

    .line 60
    iget-object v0, p0, Landroidx/car/app/model/constraints/TabContentsConstraints;->mAllowedTemplateTypes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type is not allowed in tabs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
