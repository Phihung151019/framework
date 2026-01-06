.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mmAz:[F

.field private final mmEl:[F

.field private final mmMask:[I

.field private final mmPrn:[I

.field private final mmSnr:[F

.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    .line 181
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    .line 182
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    .line 183
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    .line 184
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 9
    .param p1, "event"    # I

    .line 187
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-$$Nest$mgetGpsSatellites(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Ljava/util/Iterator;

    move-result-object v1

    .line 192
    .local v1, "gpsSatellites":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    if-nez v1, :cond_1

    .line 193
    const-string v0, "gpsSatellites is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 194
    return-void

    .line 197
    :cond_1
    const/4 v2, 0x0

    .line 198
    .local v2, "nNumSat":I
    const/4 v3, 0x0

    .line 200
    .local v3, "nNumSatUsedInFix":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    .line 203
    .local v4, "satellite":Landroid/location/GpsSatellite;
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    aput v6, v5, v2

    .line 204
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    aput v6, v5, v2

    .line 205
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    aput v6, v5, v2

    .line 206
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v6

    aput v6, v5, v2

    .line 208
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    add-int/lit8 v3, v3, 0x1

    .line 212
    :cond_2
    nop

    .end local v4    # "satellite":Landroid/location/GpsSatellite;
    add-int/lit8 v2, v2, 0x1

    .line 213
    goto :goto_0

    .line 215
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    const/4 v5, 0x2

    aput v3, v4, v5

    .line 217
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "names":[Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1000(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 219
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 220
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v5, v4, v5

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 221
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v4, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 222
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1400(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v0, v4, v0

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1500(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    const/4 v5, 0x5

    aget-object v5, v4, v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->notifyObserver()V

    .line 226
    return-void
.end method
