.class Lb/a;
.super Ljava/lang/Object;
.source "AppCrashAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lb/a;->a:I

    .line 4
    iput-object p2, p0, Lb/a;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lb/a;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lb/a;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lb/a;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lb/a;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/b;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lb/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lb/a;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const-string p0, "FC"

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    const-string p0, "ANR"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const-string p0, "UNKNOWN"

    .line 16
    .line 17
    return-object p0
.end method

.method public f()I
    .locals 0

    .line 1
    iget p0, p0, Lb/a;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
