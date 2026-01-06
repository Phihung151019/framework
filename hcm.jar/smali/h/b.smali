.class Lh/b;
.super Ljava/lang/Object;
.source "BatteryChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lh/b;->a:I

    .line 3
    iput v0, p0, Lh/b;->b:I

    .line 4
    iput v0, p0, Lh/b;->c:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lh/b;->d:J

    .line 6
    iput-wide v0, p0, Lh/b;->e:J

    return-void
.end method

.method private constructor <init>(IIIJJ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lh/b;->a:I

    .line 9
    iput p2, p0, Lh/b;->b:I

    .line 10
    iput p3, p0, Lh/b;->c:I

    .line 11
    iput-wide p4, p0, Lh/b;->d:J

    .line 12
    iput-wide p6, p0, Lh/b;->e:J

    return-void
.end method

.method private a()I
    .locals 0

    .line 1
    iget p0, p0, Lh/b;->c:I

    .line 2
    .line 3
    return p0
.end method

.method private b()I
    .locals 0

    .line 1
    iget p0, p0, Lh/b;->b:I

    .line 2
    .line 3
    return p0
.end method

.method private c()I
    .locals 0

    .line 1
    iget p0, p0, Lh/b;->a:I

    .line 2
    .line 3
    return p0
.end method

.method private d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lh/b;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lh/b;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private f()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lh/b;->a:I

    .line 3
    .line 4
    iput v0, p0, Lh/b;->b:I

    .line 5
    .line 6
    iput v0, p0, Lh/b;->c:I

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lh/b;->d:J

    .line 11
    .line 12
    iput-wide v0, p0, Lh/b;->e:J

    .line 13
    .line 14
    return-void
.end method

.method private g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lh/b;->c:I

    .line 2
    .line 3
    return-void
.end method

.method private h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lh/b;->b:I

    .line 2
    .line 3
    return-void
.end method

.method private i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lh/b;->a:I

    .line 2
    .line 3
    return-void
.end method

.method private j(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lh/b;->e:J

    .line 2
    .line 3
    return-void
.end method

.method private k(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lh/b;->d:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ChargingInfo [index="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lh/b;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", battLevStart="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lh/b;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", battLevEnd="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lh/b;->c:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", timeStart="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lh/b;->d:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", timeEnd="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lh/b;->e:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p0, "]"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method
