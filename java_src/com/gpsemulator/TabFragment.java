package com.rosteam.gpsemulator;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.rosteam.gpsemulator.draglistview.DragItem;
import com.rosteam.gpsemulator.draglistview.DragListView;
import com.rosteam.gpsemulator.utils.RegUbic;
import java.util.ArrayList;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class TabFragment extends Fragment {
    static int EDITAR = 1;
    public static final int FAVORITOS = 0;
    public static final int HISTORIAL = 2;
    static int NORMAL = 0;
    public static final int PINED = 3;
    public static final int RUTAS = 1;
    private ArrayList<RegUbic> data;
    OnDataPass dataPasser;
    View deleteLyt;
    ItemAdapter listAdapter;
    int modo = NORMAL;
    View placeholder;
    private int tipo;

    public interface OnDataPass {
        void onDataPass(boolean z);
    }

    public TabFragment() {
    }

    public TabFragment(int i, ArrayList<RegUbic> arrayList) {
        this.tipo = i;
        this.data = arrayList;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_tab, viewGroup, false);
        DragListView dragListView = (DragListView) viewInflate.findViewById(R.id.drag_list_view);
        dragListView.getRecyclerView().setVerticalScrollBarEnabled(true);
        dragListView.setDragListListener(new DragListView.DragListListenerAdapter() { // from class: com.rosteam.gpsemulator.TabFragment.1
            @Override // com.rosteam.gpsemulator.draglistview.DragListView.DragListListenerAdapter, com.rosteam.gpsemulator.draglistview.DragListView.DragListListener
            public void onItemDragStarted(int i) {
                TabFragment.this.listAdapter.dragging = true;
            }

            @Override // com.rosteam.gpsemulator.draglistview.DragListView.DragListListenerAdapter, com.rosteam.gpsemulator.draglistview.DragListView.DragListListener
            public void onItemDragEnded(int i, int i2) {
                TabFragment.this.listAdapter.dragging = false;
            }
        });
        dragListView.setLayoutManager(new LinearLayoutManager(getContext()));
        ItemAdapter itemAdapter = new ItemAdapter(this.data, R.layout.list_item, R.id.image, false, this.tipo, new ItemAdapter.OnItemClickListener() { // from class: com.rosteam.gpsemulator.TabFragment.2
            @Override // com.rosteam.gpsemulator.ItemAdapter.OnItemClickListener
            public void onItemClick(RegUbic regUbic) {
                Intent intent = new Intent();
                if (TabFragment.this.tipo == 1) {
                    intent.putExtra("cadena", regUbic.prefName);
                } else {
                    intent.putExtra("cadena", regUbic.cadenaPref);
                }
                TabFragment.this.getActivity().setResult(TabFragment.this.tipo, intent);
                TabFragment.this.getActivity().finish();
            }
        });
        this.listAdapter = itemAdapter;
        itemAdapter.setOnDeleteListener(new ItemAdapter.ItemAdapterClickListener() { // from class: com.rosteam.gpsemulator.TabFragment.3
            @Override // com.rosteam.gpsemulator.ItemAdapter.ItemAdapterClickListener
            public void onClicked(int i) {
                super.onClicked(i);
                if (TabFragment.this.tipo == 2) {
                    TabFragment tabFragment = TabFragment.this;
                    tabFragment.limpiarPrefs(tabFragment.tipo);
                    TabFragment tabFragment2 = TabFragment.this;
                    tabFragment2.reescribirPrefs(tabFragment2.tipo);
                    if (TabFragment.this.data.isEmpty()) {
                        TabFragment.this.placeholder.setVisibility(0);
                        TabFragment.this.deleteLyt.setEnabled(false);
                        ((TextView) TabFragment.this.deleteLyt.findViewById(R.id.textDelete)).setTextColor(TabFragment.this.getResources().getColor(R.color.gris_unselected2));
                        ((ImageView) TabFragment.this.deleteLyt.findViewById(R.id.iconDelete)).setColorFilter(TabFragment.this.getResources().getColor(R.color.gris_unselected2));
                    }
                }
            }
        });
        this.listAdapter.setOnPinListener(new ItemAdapter.ItemAdapterClickListener() { // from class: com.rosteam.gpsemulator.TabFragment.4
            @Override // com.rosteam.gpsemulator.ItemAdapter.ItemAdapterClickListener
            public void onClicked(int i) {
                super.onClicked(i);
                if (TabFragment.this.tipo != 1) {
                    TabFragment tabFragment = TabFragment.this;
                    tabFragment.limpiarPrefs(tabFragment.tipo);
                    TabFragment tabFragment2 = TabFragment.this;
                    tabFragment2.reescribirPrefs(tabFragment2.tipo);
                    return;
                }
                Log.e("rePIN", "valores: " + ((RegUbic) TabFragment.this.data.get(i)).prefName + " " + ((RegUbic) TabFragment.this.data.get(i)).name);
                SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(TabFragment.this.getContext()).edit();
                editorEdit.putString(((RegUbic) TabFragment.this.data.get(i)).prefName, LocationUtils.rutaToString((RegUbic) TabFragment.this.data.get(i)));
                editorEdit.apply();
            }
        });
        dragListView.setAdapter(this.listAdapter, true);
        dragListView.setCanDragHorizontally(false);
        dragListView.setCustomDragItem(new MyDragItem(getContext(), R.layout.list_item));
        this.placeholder = viewInflate.findViewById(R.id.empyListPlaceholder);
        ArrayList<RegUbic> arrayList = this.data;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.placeholder.setVisibility(8);
        } else {
            this.placeholder.setVisibility(0);
        }
        int i = this.tipo;
        if (i == 2) {
            viewInflate.findViewById(R.id.botnEdit).setVisibility(8);
            this.deleteLyt = viewInflate.findViewById(R.id.botnDelete);
            ArrayList<RegUbic> arrayList2 = this.data;
            if (arrayList2 != null && arrayList2.isEmpty()) {
                this.deleteLyt.setEnabled(false);
                ((TextView) this.deleteLyt.findViewById(R.id.textDelete)).setTextColor(getResources().getColor(R.color.gris_unselected2));
                ((ImageView) this.deleteLyt.findViewById(R.id.iconDelete)).setColorFilter(getResources().getColor(R.color.gris_unselected2));
            }
            this.deleteLyt.setVisibility(0);
            this.deleteLyt.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.TabFragment.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TabFragment.this.confirmAndDeleteHistory();
                }
            });
            return viewInflate;
        }
        if (i != 0 && i != 1) {
            return viewInflate;
        }
        View viewFindViewById = viewInflate.findViewById(R.id.botnEdit);
        ArrayList<RegUbic> arrayList3 = this.data;
        if (arrayList3 != null && arrayList3.isEmpty()) {
            viewFindViewById.setEnabled(false);
            ((TextView) viewFindViewById.findViewById(R.id.text_edit)).setTextColor(getResources().getColor(R.color.gris_unselected2));
            ((ImageView) viewFindViewById.findViewById(R.id.icon_edit)).setColorFilter(getResources().getColor(R.color.gris_unselected2));
        }
        viewFindViewById.setOnClickListener(new AnonymousClass6(viewFindViewById, viewInflate.findViewById(R.id.botnConfirm)));
        return viewInflate;
    }

    /* JADX INFO: renamed from: com.rosteam.gpsemulator.TabFragment$6, reason: invalid class name */
    class AnonymousClass6 implements View.OnClickListener {
        final /* synthetic */ View val$confirmLyt;
        final /* synthetic */ View val$editLyt;

        AnonymousClass6(View view, View view2) {
            this.val$editLyt = view;
            this.val$confirmLyt = view2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TabFragment.this.modo = TabFragment.EDITAR;
            TabFragment.this.listAdapter.setModo(TabFragment.this.modo);
            TabFragment.this.listAdapter.notifyDataSetChanged();
            TabFragment.this.dataPasser.onDataPass(true);
            new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.TabFragment.6.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass6.this.val$editLyt.setVisibility(8);
                    AnonymousClass6.this.val$confirmLyt.setVisibility(0);
                }
            }, 300L);
            this.val$confirmLyt.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.TabFragment.6.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TabFragment.this.modo = TabFragment.NORMAL;
                    if (TabFragment.this.data.isEmpty()) {
                        TabFragment.this.placeholder.setVisibility(0);
                    }
                    TabFragment.this.listAdapter.setModo(TabFragment.this.modo);
                    TabFragment.this.listAdapter.notifyDataSetChanged();
                    TabFragment.this.dataPasser.onDataPass(false);
                    new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.TabFragment.6.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TabFragment.this.limpiarPrefs(TabFragment.this.tipo);
                            TabFragment.this.reescribirPrefs(TabFragment.this.tipo);
                            AnonymousClass6.this.val$editLyt.setVisibility(0);
                            AnonymousClass6.this.val$confirmLyt.setVisibility(8);
                        }
                    }, 300L);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onAttach(Context context) {
        super.onAttach(context);
        this.dataPasser = (OnDataPass) context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reescribirPrefs(int i) {
        String str;
        if (i == 0) {
            str = "favPosition";
        } else if (i != 1) {
            str = "histPosition";
        } else {
            str = "ruta";
        }
        Log.e("tabFragment", "reescribir " + str + " data.size=" + this.data.size());
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(getContext()).edit();
        String strFav_histToString = TtmlNode.ANONYMOUS_REGION_ID;
        for (int i2 = 0; i2 < this.data.size(); i2++) {
            if (i == 1) {
                strFav_histToString = LocationUtils.rutaToString(this.data.get(i2));
            } else if (i == 0 || i == 2) {
                strFav_histToString = fav_histToString(this.data.get(i2));
            }
            Log.e("cadena", strFav_histToString + " posicion: " + i2);
            editorEdit.putString(str + i2, strFav_histToString);
            editorEdit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void limpiarPrefs(int i) {
        String str;
        Log.e("GPSEmulator", "limpiarPref() tipo: " + i);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getContext());
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        if (i == 0) {
            str = "favPosition";
        } else if (i != 1) {
            str = "histPosition";
        } else {
            str = "ruta";
        }
        for (int i2 = 0; defaultSharedPreferences.getString(str + i2, TtmlNode.ANONYMOUS_REGION_ID).compareTo(TtmlNode.ANONYMOUS_REGION_ID) != 0; i2++) {
            editorEdit.remove(str + i2);
        }
        editorEdit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confirmAndDeleteHistory() {
        new AlertDialog.Builder(getContext(), R.style.CustomAlertDialog).setTitle(R.string.deletehistory).setMessage(R.string.deletehistorymessage).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.TabFragment.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(TabFragment.this.getContext()).edit();
                for (int i2 = 0; i2 < 12; i2++) {
                    editorEdit.remove("histPosition" + i2);
                }
                editorEdit.commit();
                TabFragment.this.data.clear();
                TabFragment.this.listAdapter.notifyDataSetChanged();
                TabFragment.this.placeholder.setVisibility(0);
                TabFragment.this.deleteLyt.setEnabled(false);
                ((TextView) TabFragment.this.deleteLyt.findViewById(R.id.textDelete)).setTextColor(TabFragment.this.getResources().getColor(R.color.gris_unselected2));
                ((ImageView) TabFragment.this.deleteLyt.findViewById(R.id.iconDelete)).setColorFilter(TabFragment.this.getResources().getColor(R.color.gris_unselected2));
            }
        }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.TabFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).show();
    }

    public String fav_histToString(RegUbic regUbic) {
        return regUbic.ciudadpais + "+" + regUbic.lat + "+" + regUbic.lng + "+" + regUbic.zoom + "+" + regUbic.bearing + "+" + regUbic.pined;
    }

    private static class MyDragItem extends DragItem {
        MyDragItem(Context context, int i) {
            super(context, i);
        }

        @Override // com.rosteam.gpsemulator.draglistview.DragItem
        public void onBindDragView(View view, View view2) {
            CharSequence text = ((TextView) view.findViewById(R.id.text)).getText();
            CharSequence text2 = ((TextView) view.findViewById(R.id.edit_name)).getText();
            ((TextView) view2.findViewById(R.id.text)).setText(text);
            ((TextView) view2.findViewById(R.id.text)).setVisibility(8);
            ((TextView) view2.findViewById(R.id.edit_name)).setText(text2);
            view2.findViewById(R.id.item_layout).setBackgroundColor(view2.getResources().getColor(R.color.colorAccent));
        }
    }
}
