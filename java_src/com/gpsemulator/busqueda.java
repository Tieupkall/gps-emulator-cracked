package com.rosteam.gpsemulator;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Address;
import android.location.Geocoder;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.gms.maps.model.LatLng;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class busqueda extends AppCompatActivity {
    ArrayList<ItemSearch> datos;
    SharedPreferences.Editor editor;
    ListView listResultados;
    View mBanner;
    Activity miActivity;
    SharedPreferences preferences;
    SearchListAdapter searchAdapter;
    ArrayList<ItemSearch> ultimasBusquedas;

    /* JADX WARN: Multi-variable type inference failed */
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTheme(R.style.AppTheme_PopupOverlay);
        setContentView(R.layout.activity_busqueda);
        setSupportActionBar(findViewById(R.id.toolbar));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.preferences = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        final InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        final EditText editText = (EditText) findViewById(R.id.search_edit);
        final ImageView imageView = (ImageView) findViewById(R.id.boton_delete_text);
        final TextView textView = (TextView) findViewById(R.id.error_search);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.search_progress);
        this.listResultados = (ListView) findViewById(R.id.lista_resultados_busqueda);
        this.datos = new ArrayList<>();
        recuperarBusquedas();
        SearchListAdapter searchListAdapter = new SearchListAdapter(this, this.datos);
        this.searchAdapter = searchListAdapter;
        this.listResultados.setAdapter((ListAdapter) searchListAdapter);
        this.listResultados.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.rosteam.gpsemulator.busqueda.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (busqueda.this.datos.get(i).tipo == 0) {
                    editText.setText(busqueda.this.datos.get(i).nombre);
                    editText.requestFocus();
                    EditText editText2 = editText;
                    editText2.setSelection(editText2.getText().length());
                    editText.dispatchKeyEvent(new KeyEvent(0, 66));
                }
            }
        });
        this.miActivity = this;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.busqueda.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                editText.setText(TtmlNode.ANONYMOUS_REGION_ID);
                editText.requestFocus();
                inputMethodManager.showSoftInput(editText, 0);
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: com.rosteam.gpsemulator.busqueda.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                textView.setText(TtmlNode.ANONYMOUS_REGION_ID);
                textView.setVisibility(4);
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() == 0) {
                    imageView.setVisibility(4);
                } else {
                    imageView.setVisibility(0);
                }
            }
        });
        editText.setOnKeyListener(new AnonymousClass4(editText, progressBar, imageView, inputMethodManager, textView));
        new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.busqueda.5
            @Override // java.lang.Runnable
            public void run() {
                editText.requestFocus();
            }
        }, 200L);
        runOnUiThread(new Runnable() { // from class: com.rosteam.gpsemulator.busqueda.6
            @Override // java.lang.Runnable
            public void run() {
                new Handler().postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.busqueda.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        inputMethodManager.showSoftInput(editText, 0);
                    }
                }, 250L);
            }
        });
    }

    /* JADX INFO: renamed from: com.rosteam.gpsemulator.busqueda$4, reason: invalid class name */
    class AnonymousClass4 implements View.OnKeyListener {
        final /* synthetic */ ImageView val$deleteText;
        final /* synthetic */ InputMethodManager val$imm;
        final /* synthetic */ ProgressBar val$searchProgress;
        final /* synthetic */ EditText val$searchText;
        final /* synthetic */ TextView val$textError;

        AnonymousClass4(EditText editText, ProgressBar progressBar, ImageView imageView, InputMethodManager inputMethodManager, TextView textView) {
            this.val$searchText = editText;
            this.val$searchProgress = progressBar;
            this.val$deleteText = imageView;
            this.val$imm = inputMethodManager;
            this.val$textError = textView;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [com.rosteam.gpsemulator.busqueda$4$1] */
        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 0 || i != 66) {
                return false;
            }
            final String string = this.val$searchText.getText().toString();
            if (!string.isEmpty()) {
                busqueda.this.editor.putString("lastSearch", string);
                busqueda.this.editor.commit();
                final Matcher matcher = Pattern.compile("[-+]?\\d{1,3}([.]\\d+)?, *[-+]?\\d{1,3}([.]\\d+)?").matcher(string);
                final Matcher matcher2 = Pattern.compile("[-+]?\\d{1,3}([.]\\d+)?、 *[-+]?\\d{1,3}([.]\\d+)?").matcher(string);
                new AsyncTask() { // from class: com.rosteam.gpsemulator.busqueda.4.1
                    List<Address> addresses = null;
                    LatLng miDestination;

                    @Override // android.os.AsyncTask
                    protected void onPreExecute() {
                        AnonymousClass4.this.val$searchProgress.setVisibility(0);
                        AnonymousClass4.this.val$deleteText.setVisibility(4);
                    }

                    @Override // android.os.AsyncTask
                    protected Object doInBackground(Object[] objArr) {
                        if (matcher.matches()) {
                            this.miDestination = new LatLng(Float.valueOf(matcher.group().split(",")[0]).floatValue(), Float.valueOf(matcher.group().split(",")[1]).floatValue());
                            return "move";
                        }
                        if (matcher2.matches()) {
                            this.miDestination = new LatLng(Float.valueOf(matcher2.group().split("、")[0]).floatValue(), Float.valueOf(matcher2.group().split("、")[1]).floatValue());
                            return "move";
                        }
                        try {
                            List<Address> fromLocationName = new Geocoder(busqueda.this.getBaseContext()).getFromLocationName(string, 5);
                            this.addresses = fromLocationName;
                            if (fromLocationName == null) {
                                return null;
                            }
                            if (fromLocationName.size() > 0) {
                                return "select";
                            }
                            if (this.addresses.size() == 0) {
                                return "notfound";
                            }
                            return null;
                        } catch (IOException e) {
                            e.printStackTrace();
                            return "nointernet";
                        }
                    }

                    @Override // android.os.AsyncTask
                    protected void onPostExecute(Object obj) {
                        AnonymousClass4.this.val$searchProgress.setVisibility(4);
                        AnonymousClass4.this.val$deleteText.setVisibility(0);
                        String str = (String) obj;
                        if (str.contains("ok")) {
                            AnonymousClass4.this.val$imm.hideSoftInputFromWindow(AnonymousClass4.this.val$searchText.getWindowToken(), 0);
                        } else if (str.contains("notfound")) {
                            AnonymousClass4.this.val$textError.setVisibility(0);
                            AnonymousClass4.this.val$textError.setText(R.string.place_not_found);
                        } else if (str.contains("nointernet")) {
                            AnonymousClass4.this.val$textError.setVisibility(0);
                            AnonymousClass4.this.val$textError.setText(R.string.internet_connection_needed);
                        } else if (str.contains("select")) {
                            AnonymousClass4.this.val$imm.hideSoftInputFromWindow(AnonymousClass4.this.val$searchText.getWindowToken(), 0);
                            String[] strArr = new String[this.addresses.size()];
                            for (int i2 = 0; i2 < this.addresses.size(); i2++) {
                                strArr[i2] = this.addresses.get(i2).getAddressLine(0);
                                busqueda.this.datos.add(0, new ItemSearch(1, this.addresses.get(i2)));
                            }
                            busqueda.this.searchAdapter.notifyDataSetChanged();
                            busqueda.this.listResultados.setAdapter((ListAdapter) busqueda.this.searchAdapter);
                            busqueda.this.listResultados.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.rosteam.gpsemulator.busqueda.4.1.1
                                @Override // android.widget.AdapterView.OnItemClickListener
                                public void onItemClick(AdapterView<?> adapterView, View view2, int i3, long j) {
                                    if (busqueda.this.datos.get(i3).tipo == 1) {
                                        String str2 = string.replace("+", " ") + "+" + busqueda.this.datos.get(i3).address.getLatitude() + "+" + busqueda.this.datos.get(i3).address.getLongitude() + "+15";
                                        Intent intent = new Intent();
                                        intent.putExtra("cadena", str2);
                                        busqueda.this.miActivity.setResult(0, intent);
                                        busqueda.this.miActivity.finish();
                                        return;
                                    }
                                    AnonymousClass4.this.val$searchText.setText(busqueda.this.datos.get(i3).nombre);
                                    AnonymousClass4.this.val$searchText.requestFocus();
                                    AnonymousClass4.this.val$searchText.setSelection(AnonymousClass4.this.val$searchText.getText().length());
                                    AnonymousClass4.this.val$searchText.dispatchKeyEvent(new KeyEvent(0, 66));
                                }
                            });
                        } else if (str.contains("move")) {
                            String str2 = string.replace("+", " ") + "+" + this.miDestination.latitude + "+" + this.miDestination.longitude + "+15";
                            Intent intent = new Intent();
                            intent.putExtra("cadena", str2);
                            busqueda.this.miActivity.setResult(0, intent);
                            busqueda.this.miActivity.finish();
                        }
                        AnonymousClass4.this.val$searchText.requestFocus();
                    }
                }.execute(new Object[0]);
                return true;
            }
            this.val$textError.setVisibility(0);
            this.val$textError.setText(busqueda.this.getString(R.string.enter_name));
            return true;
        }
    }

    private void recuperarBusquedas() {
        this.datos.add(new ItemSearch(0, this.preferences.getString("lastSearch", getString(R.string.rosarioarg))));
    }

    class SearchListAdapter extends ArrayAdapter<ItemSearch> {
        public SearchListAdapter(Context context, ArrayList<ItemSearch> arrayList) {
            super(context, 0, arrayList);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ItemSearch item = getItem(i);
            if (view == null) {
                view = LayoutInflater.from(busqueda.this).inflate(R.layout.search_row, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(R.id.pin_name);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon_pinned_row);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.icon_action);
            if (item.tipo == 0) {
                textView.setText(item.nombre);
                imageView.setImageResource(R.drawable.ic_history);
                imageView2.setVisibility(4);
                return view;
            }
            textView.setText(item.address.getAddressLine(0));
            imageView.setImageResource(R.drawable.pinned_location);
            imageView2.setVisibility(0);
            return view;
        }
    }

    static class ItemSearch {
        Address address;
        String nombre;
        int tipo;

        public ItemSearch(int i, Address address) {
            this.tipo = i;
            this.address = address;
        }

        public ItemSearch(int i, String str) {
            this.tipo = i;
            this.nombre = str;
        }
    }
}
