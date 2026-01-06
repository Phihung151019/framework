.class public Lh/c;
.super Ljava/lang/Object;
.source "BatteryChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "c"

.field private static c:Landroid/content/Context;

.field private static d:Lh/c;

.field private static e:Lh/b;

.field private static f:Lc/d;

.field private static g:Landroid/os/BatteryManager;


# instance fields
.field private a:La/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh/c;->a:La/d;

    .line 6
    .line 7
    sget-object v0, Lh/c;->b:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "BatteryChecker Start"

    .line 10
    .line 11
    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object p1, Lh/c;->c:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lh/c;->a:La/d;

    .line 21
    .line 22
    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lh/c;->f:Lc/d;

    .line 27
    .line 28
    sget-object p0, Lh/c;->c:Landroid/content/Context;

    .line 29
    .line 30
    const-string p1, "batterymanager"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/os/BatteryManager;

    .line 37
    .line 38
    sput-object p0, Lh/c;->g:Landroid/os/BatteryManager;

    .line 39
    .line 40
    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lh/c;
    .locals 2

    .line 1
    const-class v0, Lh/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lh/c;->d:Lh/c;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lh/c;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lh/c;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lh/c;->d:Lh/c;

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
    sget-object p0, Lh/c;->d:Lh/c;
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


# virtual methods
.method public a()I
    .locals 3

    .line 1
    sget-object p0, Lh/c;->g:Landroid/os/BatteryManager;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    sget-object v0, Lh/c;->b:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "Battery Status : "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return p0
.end method

.method public b()Z
    .locals 3

    .line 1
    sget-object p0, Lh/c;->c:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "batterymanager"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/BatteryManager;

    .line 10
    .line 11
    sput-object p0, Lh/c;->g:Landroid/os/BatteryManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/os/BatteryManager;->isCharging()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sget-object v0, Lh/c;->b:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "Battery Charging : "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return p0
.end method

.method public c()I
    .locals 3

    .line 1
    sget-object p0, Lh/c;->g:Landroid/os/BatteryManager;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    sget-object v0, Lh/c;->b:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "Battery Level : "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return p0
.end method

.method public d()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh/c;->a()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object v0, Lh/c;->b:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Battery status : "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-ne p0, v0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x3

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 v0, 0x5

    .line 33
    if-ne p0, v0, :cond_1

    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    const/4 p0, 0x4

    .line 37
    return p0
.end method
