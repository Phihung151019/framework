.class Landroid/test/mock/MockContentProvider$InversionIContentProvider;
.super Ljava/lang/Object;
.source "MockContentProvider.java"

# interfaces
.implements Landroid/content/IContentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/mock/MockContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InversionIContentProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/mock/MockContentProvider;


# direct methods
.method private constructor <init>(Landroid/test/mock/MockContentProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;)V

    return-void
.end method


# virtual methods
.method public applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 67
    .local p3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0}, Landroid/test/mock/MockContentProvider;->getIContentProviderBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "request"    # Ljava/lang/String;
    .param p5, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/test/mock/MockContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2}, Landroid/test/mock/MockContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 170
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->canonicalizeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 171
    return-void
.end method

.method public checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 194
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public getStreamTypes(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/content/AttributionSource;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2}, Landroid/test/mock/MockContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/test/mock/MockContentProvider;->getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 97
    return-void
.end method

.method public getTypeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 92
    return-void
.end method

.method public insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/test/mock/MockContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->refresh(Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2}, Landroid/test/mock/MockContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 182
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->uncanonicalizeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 183
    return-void
.end method

.method public update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method
