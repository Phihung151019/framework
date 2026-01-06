.class Lb/j;
.super Ljava/lang/Object;
.source "MemoryAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/j;->a:I

    const v1, 0x5f5e0ff

    .line 4
    iput v1, p0, Lb/j;->b:I

    .line 5
    iput v0, p0, Lb/j;->c:I

    .line 6
    iput v0, p0, Lb/j;->d:I

    .line 7
    iput v0, p0, Lb/j;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lb/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/j;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lb/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/j;->g(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic b(Lb/j;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/j;->h()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic c(Lb/j;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/j;->i()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic d(Lb/j;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/j;->j()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic e(Lb/j;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/j;->k()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic f(Lb/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/j;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(I)V
    .locals 2

    .line 1
    iget v0, p0, Lb/j;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lb/j;->e:I

    .line 6
    .line 7
    iget v1, p0, Lb/j;->b:I

    .line 8
    .line 9
    if-ge p1, v1, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lb/j;->b:I

    .line 12
    .line 13
    :cond_0
    iget v1, p0, Lb/j;->c:I

    .line 14
    .line 15
    if-le p1, v1, :cond_1

    .line 16
    .line 17
    iput p1, p0, Lb/j;->c:I

    .line 18
    .line 19
    :cond_1
    iget v1, p0, Lb/j;->d:I

    .line 20
    .line 21
    add-int/2addr v1, p1

    .line 22
    iput v1, p0, Lb/j;->d:I

    .line 23
    .line 24
    div-int/2addr v1, v0

    .line 25
    iput v1, p0, Lb/j;->a:I

    .line 26
    .line 27
    return-void
.end method

.method private h()I
    .locals 0

    .line 1
    iget p0, p0, Lb/j;->a:I

    .line 2
    .line 3
    return p0
.end method

.method private i()I
    .locals 0

    .line 1
    iget p0, p0, Lb/j;->e:I

    .line 2
    .line 3
    return p0
.end method

.method private j()I
    .locals 0

    .line 1
    iget p0, p0, Lb/j;->c:I

    .line 2
    .line 3
    return p0
.end method

.method private k()I
    .locals 0

    .line 1
    iget p0, p0, Lb/j;->b:I

    .line 2
    .line 3
    return p0
.end method

.method private l()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/j;->a:I

    .line 3
    .line 4
    const v1, 0x5f5e0ff

    .line 5
    .line 6
    .line 7
    iput v1, p0, Lb/j;->b:I

    .line 8
    .line 9
    iput v0, p0, Lb/j;->c:I

    .line 10
    .line 11
    iput v0, p0, Lb/j;->d:I

    .line 12
    .line 13
    iput v0, p0, Lb/j;->e:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "min : "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lb/j;->b:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " / max : "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lb/j;->c:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " / avg : "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lb/j;->a:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " / cnt : "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget p0, p0, Lb/j;->e:I

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
