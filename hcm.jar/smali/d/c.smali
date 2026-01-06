.class public Ld/c;
.super Ljava/lang/Object;
.source "HcmTraining.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static b:Ld/c;

.field private static c:La/d;

.field private static d:Lc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sput-object p0, Ld/c;->c:La/d;

    .line 9
    .line 10
    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sput-object p0, Ld/c;->d:Lc/d;

    .line 15
    .line 16
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/c;
    .locals 2

    .line 1
    const-class v0, Ld/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld/c;->b:Ld/c;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ld/c;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Ld/c;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Ld/c;->b:Ld/c;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Ld/c;->b:Ld/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method public static b()V
    .locals 0

    .line 1
    return-void
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Ld/c;->d:Lc/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc/d;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static d()V
    .locals 4

    .line 1
    invoke-static {}, La/j;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Ld/c;->d:Lc/d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lc/d;->K(I)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Ld/c;->d:Lc/d;

    .line 12
    .line 13
    invoke-virtual {v1}, Lc/d;->F()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Ld/c;->d:Lc/d;

    .line 17
    .line 18
    invoke-virtual {v1}, Lc/d;->D()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Ld/c;->d:Lc/d;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v2}, Lc/d;->G(II)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Ld/c;->d:Lc/d;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-virtual {v1, v3, v0}, Lc/d;->G(II)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ld/c;->c()V

    .line 33
    .line 34
    .line 35
    sget-object v0, Ld/c;->d:Lc/d;

    .line 36
    .line 37
    invoke-virtual {v0}, Lc/d;->q()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Ld/c;->d:Lc/d;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lc/d;->O(Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
