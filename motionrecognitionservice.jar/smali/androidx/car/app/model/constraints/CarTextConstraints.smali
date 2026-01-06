.class public final Landroidx/car/app/model/constraints/CarTextConstraints;
.super Ljava/lang/Object;
.source "CarTextConstraints.java"


# static fields
.field public static final CLICKABLE_TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

.field public static final COLOR_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

.field public static final CONSERVATIVE:Landroidx/car/app/model/constraints/CarTextConstraints;

.field public static final TEXT_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

.field public static final TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

.field public static final TEXT_WITH_COLORS:Landroidx/car/app/model/constraints/CarTextConstraints;

.field public static final TEXT_WITH_COLORS_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

.field public static final UNCONSTRAINED:Landroidx/car/app/model/constraints/CarTextConstraints;


# instance fields
.field private final mAllowedTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/car/app/model/CarSpan;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    new-instance v0, Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->CONSERVATIVE:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 47
    new-instance v0, Landroidx/car/app/model/constraints/CarTextConstraints;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroidx/car/app/model/CarIconSpan;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroidx/car/app/model/ClickableSpan;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Landroidx/car/app/model/DistanceSpan;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Landroidx/car/app/model/DurationSpan;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Landroidx/car/app/model/ForegroundCarColorSpan;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 57
    new-instance v0, Landroidx/car/app/model/constraints/CarTextConstraints;

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroidx/car/app/model/ClickableSpan;

    aput-object v2, v1, v3

    const-class v2, Landroidx/car/app/model/DistanceSpan;

    aput-object v2, v1, v4

    const-class v2, Landroidx/car/app/model/DurationSpan;

    aput-object v2, v1, v5

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->CLICKABLE_TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 65
    new-instance v0, Landroidx/car/app/model/constraints/CarTextConstraints;

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroidx/car/app/model/ForegroundCarColorSpan;

    aput-object v2, v1, v3

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->COLOR_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 70
    new-instance v0, Landroidx/car/app/model/constraints/CarTextConstraints;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroidx/car/app/model/DistanceSpan;

    aput-object v2, v1, v3

    const-class v2, Landroidx/car/app/model/DurationSpan;

    aput-object v2, v1, v4

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_ONLY:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 77
    new-instance v0, Landroidx/car/app/model/constraints/CarTextConstraints;

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroidx/car/app/model/DistanceSpan;

    aput-object v2, v1, v3

    const-class v2, Landroidx/car/app/model/DurationSpan;

    aput-object v2, v1, v4

    const-class v2, Landroidx/car/app/model/CarIconSpan;

    aput-object v2, v1, v5

    .line 78
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 85
    new-instance v0, Landroidx/car/app/model/constraints/CarTextConstraints;

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroidx/car/app/model/DistanceSpan;

    aput-object v2, v1, v3

    const-class v2, Landroidx/car/app/model/DurationSpan;

    aput-object v2, v1, v4

    const-class v2, Landroidx/car/app/model/ForegroundCarColorSpan;

    aput-object v2, v1, v5

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_WITH_COLORS:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 93
    new-instance v0, Landroidx/car/app/model/constraints/CarTextConstraints;

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Landroidx/car/app/model/DistanceSpan;

    aput-object v2, v1, v3

    const-class v2, Landroidx/car/app/model/DurationSpan;

    aput-object v2, v1, v4

    const-class v2, Landroidx/car/app/model/ForegroundCarColorSpan;

    aput-object v2, v1, v5

    const-class v2, Landroidx/car/app/model/CarIconSpan;

    aput-object v2, v1, v6

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/car/app/model/constraints/CarTextConstraints;->TEXT_WITH_COLORS_AND_ICON:Landroidx/car/app/model/constraints/CarTextConstraints;

    .line 93
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
            "Landroidx/car/app/model/CarSpan;",
            ">;>;)V"
        }
    .end annotation

    .line 124
    .local p1, "allowedSpans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroidx/car/app/model/CarSpan;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/car/app/model/constraints/CarTextConstraints;->mAllowedTypes:Ljava/util/HashSet;

    .line 126
    return-void
.end method

.method private checkSupportedSpans(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/app/model/CarText$SpanWrapper;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/CarText$SpanWrapper;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarText$SpanWrapper;

    .line 116
    .local v1, "span":Landroidx/car/app/model/CarText$SpanWrapper;
    invoke-virtual {v1}, Landroidx/car/app/model/CarText$SpanWrapper;->getCarSpan()Landroidx/car/app/model/CarSpan;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 117
    .local v2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/car/app/model/CarSpan;>;"
    iget-object v3, p0, Landroidx/car/app/model/constraints/CarTextConstraints;->mAllowedTypes:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    .end local v1    # "span":Landroidx/car/app/model/CarText$SpanWrapper;
    .end local v2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/car/app/model/CarSpan;>;"
    goto :goto_0

    .line 118
    .restart local v1    # "span":Landroidx/car/app/model/CarText$SpanWrapper;
    .restart local v2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/car/app/model/CarSpan;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarSpan type is not allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 119
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    .end local v1    # "span":Landroidx/car/app/model/CarText$SpanWrapper;
    .end local v2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/car/app/model/CarSpan;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public validateOrThrow(Landroidx/car/app/model/CarText;)V
    .locals 2
    .param p1, "carText"    # Landroidx/car/app/model/CarText;

    .line 108
    invoke-virtual {p1}, Landroidx/car/app/model/CarText;->getSpans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/car/app/model/constraints/CarTextConstraints;->checkSupportedSpans(Ljava/util/List;)V

    .line 109
    invoke-virtual {p1}, Landroidx/car/app/model/CarText;->getSpansForVariants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 110
    .local v1, "variantSpans":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/CarText$SpanWrapper;>;"
    invoke-direct {p0, v1}, Landroidx/car/app/model/constraints/CarTextConstraints;->checkSupportedSpans(Ljava/util/List;)V

    .line 111
    .end local v1    # "variantSpans":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/model/CarText$SpanWrapper;>;"
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method
